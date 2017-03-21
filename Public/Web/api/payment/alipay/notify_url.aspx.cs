﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using API.Payment.Alipay;
using Common;

namespace Web.api.payment.alipay
{
    public partial class notify_url : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SortedDictionary<string, string> sPara = GetRequestPost();

            if (sPara.Count > 0)//判断是否有带返回参数
            {
                Notify aliNotify = new Notify();
                bool verifyResult = aliNotify.Verify(sPara, AXRequest.GetString("notify_id"), AXRequest.GetString("sign"));

                //写日志
                //System.IO.File.AppendAllText(Utils.GetMapPath("alipaylog.txt"), "验证结果：" + verifyResult.ToString() + "\n", System.Text.Encoding.UTF8);

                if (verifyResult)//验证成功
                {
                    string trade_no = AXRequest.GetString("trade_no");                  //支付宝交易号
                    string order_no = AXRequest.GetString("out_trade_no").ToUpper();    //获取订单号
                    string total_fee = AXRequest.GetString("total_fee");                //获取总金额
                    string trade_status = AXRequest.GetString("trade_status");          //交易状态

                    if (trade_status == "TRADE_FINISHED" || trade_status == "TRADE_SUCCESS")
                    {
                        if (order_no.StartsWith("R")) //充值订单
                        {
                            BLL.user_amount_log bll = new BLL.user_amount_log();
                            Model.user_amount_log model = bll.GetModel(order_no);
                            if (model == null)
                            {
                                Response.Write("该订单号不存在");
                                return;
                            }
                            if (model.status == 1) //已成功
                            {
                                Response.Write("success");
                                return;
                            }
                            if (model.value != decimal.Parse(total_fee))
                            {
                                Response.Write("订单金额和支付金额不相符");
                                return;
                            }
                            model.trade_no = trade_no;
                            model.status = 1;
                            model.complete_time = DateTime.Now;
                            bool result = bll.Update(model);
                            if (!result)
                            {
                                Response.Write("修改订单状态失败");
                                return;
                            }
                        }
                        else if (order_no.StartsWith("B")) //商品订单
                        {
                            //写日志
                            //System.IO.File.AppendAllText(Utils.GetMapPath("alipaylog.txt"), "商品订单\n", System.Text.Encoding.UTF8);

                            BLL.orders bll = new BLL.orders();
                            Model.orders model = bll.GetModel(order_no);
                            if (model == null)
                            {
                                //写日志
                                //System.IO.File.AppendAllText(Utils.GetMapPath("alipaylog.txt"), "订单号：" + order_no + "不存在\n", System.Text.Encoding.UTF8);
                                Response.Write("该订单号不存在");
                                return;
                            }
                            if (model.payment_status == 2) //已付款
                            {
                                //写日志
                                //System.IO.File.AppendAllText(Utils.GetMapPath("alipaylog.txt"), "订单号：" + order_no + "已付款\n", System.Text.Encoding.UTF8);
                                Response.Write("success");
                                return;
                            }
                            if (model.order_amount != decimal.Parse(total_fee))
                            {
                                //写日志
                                //System.IO.File.AppendAllText(Utils.GetMapPath("alipaylog.txt"), "订单号：" + order_no + "订单金额" + model.order_amount + "和支付金额" + total_fee + "不相符\n", System.Text.Encoding.UTF8);
                                Response.Write("订单金额和支付金额不相符");
                                return;
                            }
                            bool result = bll.UpdateField(order_no, "trade_no='" + trade_no + "',status=2,payment_status=2,payment_time='" + DateTime.Now + "'");
                            if (!result)
                            {
                                Response.Write("修改订单状态失败");
                                return;
                            }
                            //写日志
                            //System.IO.File.AppendAllText(Utils.GetMapPath("alipaylog.txt"), "修改订单状态：" + result.ToString() + "\n", System.Text.Encoding.UTF8);

                            //扣除积分
                            if (model.point < 0)
                            {
                                new BLL.user_point_log().Add(model.user_id, model.user_name, model.point, "换购扣除积分，订单号：" + model.order_no, false);
                            }
                        }
                    }

                    Response.Write("success");  //请不要修改或删除
                }
                else//验证失败
                {
                    Response.Write("fail");
                }
            }
            else
            {
                Response.Write("无通知参数");
            }
        }

        /// <summary>
        /// 获取支付宝POST过来通知消息，并以“参数名=参数值”的形式组成数组
        /// </summary>
        /// <returns>request回来的信息组成的数组</returns>
        public SortedDictionary<string, string> GetRequestPost()
        {
            int i = 0;
            SortedDictionary<string, string> sArray = new SortedDictionary<string, string>();
            NameValueCollection coll;
            coll = Request.Form;

            String[] requestItem = coll.AllKeys;

            for (i = 0; i < requestItem.Length; i++)
            {
                sArray.Add(requestItem[i], Request.Form[requestItem[i]]);
            }

            return sArray;
        }

    }
}