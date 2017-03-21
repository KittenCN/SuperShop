﻿using System;
using System.Text;
using System.Text.RegularExpressions;
using System.Data;
using System.Collections.Generic;
using Common;
using System.IO;
using System.Net;


namespace BLL
{
    /// <summary>
    /// 手机短信
    /// </summary>
    public partial class sms_message
    {
        private readonly Model.siteconfig siteConfig = new BLL.siteconfig().loadConfig(); //获得站点配置信息
        public sms_message()
        { }

        /// <summary>
        /// 检查账户信息是否正确
        /// </summary>
        /// <returns></returns>
        public bool Exists()
        {
            if (string.IsNullOrEmpty(siteConfig.smsapiurl) || string.IsNullOrEmpty(siteConfig.smsusername) || string.IsNullOrEmpty(siteConfig.smspassword))
            {
                return false;
            }
            return true;
        }

        /// <summary>
        /// 发送手机短信
        /// </summary>
        /// <param name="mobiles">手机号码，以英文“,”逗号分隔开</param>
        /// <param name="content">短信内容</param>
        /// <param name="pass">短信通道1验证码通道2广告通道</param>
        /// <param name="msg">返回提示信息</param>
        /// <returns>bool</returns>
        public bool Send(string mobiles, string content, int pass, out string msg)
        {
            //检查是否设置好短信账号
            if (!Exists())
            {
                msg = "短信配置参数有误，请完善后再提交！";
                return false;
            }
            //检查手机号码，如果超过2000则分批发送
            int sucCount = 0; //成功提交数量
            string errorMsg = string.Empty; //错误消息
            string[] oldMobileArr = mobiles.Split(',');
            int batch = oldMobileArr.Length / 2000 + 1; //2000条为一批，求出分多少批

            for (int i = 0; i < batch; i++)
            {
                StringBuilder sb = new StringBuilder();
                int sendCount = 0; //发送数量
                int maxLenght = (i + 1) * 2000; //循环最大的数

                //检测号码，忽略不合格的，重新组合
                for (int j = 0; j < oldMobileArr.Length && j < maxLenght; j++)
                {
                    int arrNum = j + (i * 2000);
                    string pattern = @"^1\d{10}$";
                    string mobile = oldMobileArr[arrNum].Trim();
                    Regex r = new Regex(pattern, RegexOptions.IgnoreCase); //正则表达式实例，不区分大小写
                    Match m = r.Match(mobile); //搜索匹配项
                    if (m != null)
                    {
                        sendCount++;
                        sb.Append(mobile + ",");
                    }
                }

                //发送短信
                if (sb.ToString().Length > 0)
                {
                    try
                    {
                        string sms_url =siteConfig.smsapiurl +"?user=" + siteConfig.smsusername + "&pass=" + siteConfig.smspassword + "&mobile=" + Utils.DelLastComma(sb.ToString()) + "&content=" + content + "&encode=utf-8";
                        GetHtmlFromUrl(sms_url);
                        //string[] strArr = result.Split(new string[] { "||" }, StringSplitOptions.None);
                        //if (strArr[0] != "100")
                        //{
                        //    errorMsg = "提交失败，错误提示：" + strArr[1];
                        //    continue;
                        //}
                        sucCount += sendCount; //成功数量
                     
                    }
                    catch
                    {
                        //没有动作
                    }
                }
            }

            //返回状态
            if (sucCount > 0)
            {
                msg = "成功提交" + sucCount + "条，失败" + (oldMobileArr.Length - sucCount) + "条";
                return true;
            }
            msg = errorMsg;
            return false;
        }

        /// <summary>
        /// 查询账户剩余短信数量
        /// </summary>
        public int GetAccountQuantity(out string code)
        {
            //检查是否设置好短信账号
            if (!Exists())
            {
                code = "115";
                return 0;
            }
            try
            {
                string result = GetHtmlFromUrl(siteConfig.smsapiurl+"?user=" + siteConfig.smsusername + "&pass=" + siteConfig.smspassword);

                string[] ArrayVid = result.Split(',');
                if (ArrayVid.Length == 2)
                {
                    code = "100";
                    return Utils.StrToInt(ArrayVid[1], 0);
                }
                else
                {
                    code = "115";
                    return 0;
                }
                //string[] strArr = result.Split(new string[] { "||" }, StringSplitOptions.None);
                //if (strArr[0] != "100")
                //{
                //    code = strArr[0];
                //    return 0;
                //}
          
               
            }
            catch
            {
                code = "115";
                return 0;
            }
        }


        //调用时只需要把调用地址拼成的URL传给该函数即可。判断返回值即可
        public string GetHtmlFromUrl(string url)
        {
            string strRet = null;

            if (url == null || url.Trim().ToString() == "")
            {
                return strRet;
            }
            string targeturl = url.Trim().ToString();
            try
            {
                HttpWebRequest hr = (HttpWebRequest)WebRequest.Create(targeturl);
                hr.UserAgent = "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)";
                hr.Method = "GET";
                hr.Timeout = 30 * 60 * 1000;
                WebResponse hs = hr.GetResponse();
                Stream sr = hs.GetResponseStream();
                StreamReader ser = new StreamReader(sr, System.Text.Encoding.Default);
                strRet = "<br/>resp=" + ser.ReadToEnd();
            }
            catch (Exception ex)
            {
                strRet = null;
            }
            return strRet;
        }

        /// <summary>
        /// 查询已发送数量
        /// </summary>
        public int GetSendQuantity(out string code)
        {
            //检查是否设置好短信账号
            if (!Exists())
            {
                code = "115";
                return 0;
            }
            try
            {
                string result = Utils.HttpPost(siteConfig.smsapiurl, "m/cmd=se&uid=" + siteConfig.smsusername + "&pwd=" + siteConfig.smspassword);
                string[] strArr = result.Split(new string[] { "||" }, StringSplitOptions.None);
                if (strArr[0] != "100")
                {
                    code = strArr[0];
                    return 0;
                }
                code = strArr[0];
                return Utils.StrToInt(strArr[1], 0);
            }
            catch
            {
                code = "115";
                return 0;
            }
        }

    }
}
