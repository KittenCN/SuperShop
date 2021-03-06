﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="Web.UI.Page.userorder" ValidateRequest="false" %>

<%@ Import Namespace="System.Collections.Generic" %>
<%@ Import Namespace="System.Text" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="Common" %>
<script runat="server">
    override protected void OnInit(EventArgs e)
    {

        /* 
            This page was created by AoXiang Template Engine at 2014-11-26 21:30:55.
            本页面代码由AoXiang模板引擎生成于 2014-11-26 21:30:55. 
        */

        base.OnInit(e);
        StringBuilder templateBuilder = new StringBuilder(220000);
        templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>我的订单 - ");
        templateBuilder.Append(Utils.ObjectToStr(config.webname));
        templateBuilder.Append("</title>\r\n<meta content=\"");
        templateBuilder.Append(Utils.ObjectToStr(config.webkeyword));
        templateBuilder.Append("\" name=\"keywords\" />\r\n<meta content=\"");
        templateBuilder.Append(Utils.ObjectToStr(config.webdescription));
        templateBuilder.Append("\" name=\"description\" />\r\n<link rel=\"stylesheet\" href=\"");
        templateBuilder.Append(Utils.ObjectToStr(config.webpath));
        templateBuilder.Append("css/pagination.css\" />\r\n<link media=\"screen\" type=\"text/css\" href=\"");
        templateBuilder.Append("/templates/green");
        templateBuilder.Append("/css/style.css\" rel=\"stylesheet\" />\r\n<script type=\"text/javascript\" src=\"");
        templateBuilder.Append(Utils.ObjectToStr(config.webpath));
        templateBuilder.Append("scripts/jquery/jquery-1.10.2.min.js\"></");
        templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
        templateBuilder.Append(Utils.ObjectToStr(config.webpath));
        templateBuilder.Append("scripts/lhgdialog/lhgdialog.js?skin=idialog\"></");
        templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
        templateBuilder.Append("/templates/green");
        templateBuilder.Append("/js/base.js\"></");
        templateBuilder.Append("script>\r\n<link media=\"screen\" type=\"text/css\" rel=\"stylesheet\" href=\"");
        templateBuilder.Append("/templates/green");
        templateBuilder.Append("/images/jquery-ui.min.css\">\r\n<link media=\"screen\" type=\"text/css\" rel=\"stylesheet\"  href=\"");
        templateBuilder.Append("/templates/green");
        templateBuilder.Append("/css/common.min.css\">\r\n<link media=\"screen\" type=\"text/css\" rel=\"stylesheet\"  href=\"");
        templateBuilder.Append("/templates/green");
        templateBuilder.Append("/images/maincolor_10.css\">\r\n<link media=\"screen\" type=\"text/css\" rel=\"stylesheet\"  href=\"");
        templateBuilder.Append("/templates/green");
        templateBuilder.Append("/images/mainplugincolor_10.css\">\r\n<link media=\"screen\" type=\"text/css\" rel=\"stylesheet\"  href=\"");
        templateBuilder.Append("/templates/green");
        templateBuilder.Append("/images/deputycolor_0.css\">\r\n<link media=\"screen\" type=\"text/css\" rel=\"stylesheet\"  href=\"");
        templateBuilder.Append("/templates/green");
        templateBuilder.Append("/images/bordercolor_2.css\" >\r\n<script type=\"text/javascript\" src=\"");
        templateBuilder.Append("/templates/green");
        templateBuilder.Append("/images/jquery-ui-1.11.1.custom.min.js\"></");
        templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
        templateBuilder.Append("/templates/green");
        templateBuilder.Append("/images/common.min.js\"></");
        templateBuilder.Append("script>\r\n<script type=\"text/javascript\"  src=\"");
        templateBuilder.Append("/templates/green");
        templateBuilder.Append("/images/jquery.filedownload.min.js\"></");
        templateBuilder.Append("script>\r\n\r\n</head>\r\n\r\n<body style=\"background-color: rgb(255, 255, 255);\">\r\n	<div id=\"main\">\r\n<!--Header-->\r\n");

        templateBuilder.Append("<script src=\"");
        templateBuilder.Append("/templates/green");
        templateBuilder.Append("/images/logon_status.js\" type=\"text/javascript\"></");
        templateBuilder.Append("script>\r\n <script type=\"text/javascript\"  src=\"");
        templateBuilder.Append("/templates/green");
        templateBuilder.Append("/js/base.js\"></");
        templateBuilder.Append("script>\r\n<script type=\"text/javascript\">\r\n    var Configure = {\r\n        Third_Jump: \"http://\",\r\n        ShowHeader: true,\r\n        ShowZhuyun: true,\r\n        ShowNav: true\r\n    };\r\n    var browser_now = new Date();\r\n    function is_logon() {\r\n        return logon_type != null;\r\n    }\r\n    function get_logon_type() {\r\n        return logon_type;\r\n    }\r\n    function get_logon_name() {\r\n        return logon_name;\r\n    }\r\n    function get_logon_now() {\r\n        return logon_now;\r\n    }\r\n    function get_real_now() {\r\n        var diff = browser_now.getTime() - logon_now.getTime();\r\n        var now = new Date();\r\n        return new Date(now.getTime() - diff);\r\n    }\r\n</");
        templateBuilder.Append("script>\r\n\r\n<div id=\"store_header\">\r\n	<div class=\"header\">\r\n		<div class=\"header_tt\">\r\n        <a class=\"Collect\" href=\"javascript:window.external.AddFavorite('http://trade.aw-trade.com','A&W TRADE电子商务应用系统')\" title=\"加入收藏\">收藏本站</a>	\r\n            		    <script type=\"text/javascript\">\r\n            		        $.ajax({\r\n            		            type: \"POST\",\r\n            		            url: \"");
        templateBuilder.Append(Utils.ObjectToStr(config.webpath));
        templateBuilder.Append("tools/submit_ajax.ashx?action=user_check_login\",\r\n            		            dataType: \"json\",\r\n            		            timeout: 20000,\r\n            		            success: function (data, textStatus) {\r\n            		                if (data.status == 1) {\r\n            		                    $(\"#menu\").append('<li><a href=\"");
        templateBuilder.Append(linkurl("usercenter", "exit"));

        templateBuilder.Append("\">退出</a></li>');\r\n            		                    $(\"#menu\").append('<li><a href=\"");
        templateBuilder.Append(linkurl("usercenter", "index"));

        templateBuilder.Append("\">会员中心</a></li>');\r\n            		                } else {\r\n            		                    $(\"#menu\").append('<li><a href=\"");
        templateBuilder.Append(linkurl("register"));

        templateBuilder.Append("\"></a></li>');\r\n            		                    $(\"#menu\").append('<li><a href=\"");
        templateBuilder.Append(linkurl("login"));

        templateBuilder.Append("\">登录</a></li>');\r\n            		                }\r\n            		            }\r\n            		        });\r\n    </");
        templateBuilder.Append("script>\r\n            <ul class=\"header_login\" id=\"menu\" >\r\n      <li><a href=\"");
        templateBuilder.Append(linkurl("content", "lianxiwomen"));

        templateBuilder.Append("\">联系我们</a></li>\r\n    \r\n			</ul>\r\n		</div>\r\n	</div>\r\n		<div id=\"header_content_box\"><div id=\"header_content\">\r\n</div></div>\r\n			<div class=\"header_style0\">\r\n				<div class=\"header_logo_content\">\r\n					<div class=\"header_logo_gox\">\r\n						<ul>\r\n							<li class=\"header_logo\" id=\"store_info_logo\"><a href=\"index.aspx\"><img alt=\"");
        templateBuilder.Append(Utils.ObjectToStr(config.webname));
        templateBuilder.Append("\" title=\"");
        templateBuilder.Append(Utils.ObjectToStr(config.webname));
        templateBuilder.Append("\" src=\"");
        templateBuilder.Append("/templates/green");
        templateBuilder.Append("/images/logo.jpg\"></a></li>\r\n							<li class=\"header_search\" id=\"show_store_search\">\r\n								<div class=\"header_search_input patt_bg_search patt_border_search\">\r\n<input id=\"keywords\" name=\"keywords\" remind=\"\" value=\"\" type=\"text\" x-webkit-speech=\"\" autofocus=\"\" placeholder=\"输入回车搜索\" onkeydown=\"if(event.keyCode==13){SiteSearch('");
        templateBuilder.Append(linkurl("search"));

        templateBuilder.Append("', '#keywords');return false};\" />\r\n      <a onclick=\"SiteSearch('");
        templateBuilder.Append(linkurl("search"));

        templateBuilder.Append("', '#keywords');\" ><p id=\"search_button\" class=\"patt_font_search\">搜索</p></a>						\r\n								</div>\r\n							</li>\r\n							<li class=\"header_ad\" id=\"store_info_ad\">\r\n								<ul>\r\n										<li class=\"ad_phone_photo\"><img src=\"");
        templateBuilder.Append("/templates/green");
        templateBuilder.Append("/images/ad_photo.png\"></li>\r\n										<li class=\"ad_phone\">00971(0)44343337</li>\r\n								</ul>\r\n							</li>\r\n						</ul>\r\n					</div>\r\n				</div>\r\n				<div class=\"header_navbox patt_bg_nav\">\r\n					<div class=\"header_nav\">\r\n						<div class=\"header_sort patt_bg_sort\">&nbsp;\r\n							<span>全部商品分类</span>\r\n							<div class=\"header_button_b\"></div>\r\n							<div class=\"Nav_TitleStyleBox\" style=\"position: absolute;top: 33px;width: 183px;left: -6px;display:none\">\r\n								<div class=\"nav_style1_main_content_border\">\r\n								<div class=\"nav_style1_main_content\">\r\n									<ul class=\"nav_style1_content nav_style1_color1\" style=\"cursor: default;\">\r\n         ");
        DataTable category_list33 = get_category_child_list("goods", 0);

        int cdr33__loop__id = 0;
        foreach (DataRow cdr33 in category_list33.Rows)
        {
            cdr33__loop__id++;


            templateBuilder.Append("\r\n											<li class=\"class1 nav_style1_content_li\" class1_id=\"6461\"><p class=\"nav_p\"><a target=\"_blank\"  href=\"");
            templateBuilder.Append(linkurl("goods_list", Utils.ObjectToStr(cdr33["id"])));

            templateBuilder.Append("\">" + Utils.ObjectToStr(cdr33["title"]) + "</a></p><div class=\"nav_style1_button_arrow icon_nav_arrow\"></div></li>\r\n											");
        }	//end for if

        templateBuilder.Append("\r\n									</ul>\r\n         ");
        DataTable category_list44 = get_category_child_list("goods", 0);

        int cdr44__loop__id = 0;
        foreach (DataRow cdr44 in category_list44.Rows)
        {
            cdr44__loop__id++;


            templateBuilder.Append("\r\n										<div class=\"nav_style1_sub patt_header_leftnav\" style=\"display: none;\">\r\n												<dl class=\"nav_style1_sub_class2\">\r\n													<dt class=\"class2\" class2_id=\"7524\"><a target=\"_blank\" href=\"");
            templateBuilder.Append(linkurl("goods_list", Utils.ObjectToStr(cdr44["id"])));

            templateBuilder.Append("\">" + Utils.ObjectToStr(cdr44["title"]) + "</a></a></dt>\r\n													<dd>\r\n          ");
            DataTable category_list55 = get_category_child_list("goods", Utils.StrToInt(Utils.ObjectToStr(cdr44["id"]), 0));

            int cdr55__loop__id = 0;
            foreach (DataRow cdr55 in category_list55.Rows)
            {
                cdr55__loop__id++;


                templateBuilder.Append("\r\n															<em class=\"class3\" class3_id=\"10006\"><a target=\"_blank\" href=\"");
                templateBuilder.Append(linkurl("goods_list", Utils.ObjectToStr(cdr55["id"])));

                templateBuilder.Append("\">" + Utils.ObjectToStr(cdr55["title"]) + "</a></em>\r\n																");
            }	//end for if

            templateBuilder.Append("\r\n													</dd>\r\n												</dl>\r\n												\r\n										</div>\r\n									");
        }	//end for if

        templateBuilder.Append("\r\n								</div>\r\n								</div>\r\n							</div>\r\n						</div>\r\n						<div class=\"header_sortnav\" id=\"show_store_menu\">\r\n							<ul class=\"menu_hot\">\r\n\r\n         <li class=\"header_cheaked patt_bg_header_checked\"><a href=\"");
        templateBuilder.Append(linkurl("index"));

        templateBuilder.Append("\">首页</a></li>\r\n        <li><a href=\"");
        templateBuilder.Append(linkurl("goods"));

        templateBuilder.Append("\">购物商城</a></li>\r\n        <li><a href=\"");
        templateBuilder.Append(linkurl("content", "ruhexiadan"));

        templateBuilder.Append("\">购物流程</a></li>\r\n        <li><a href=\"");
        templateBuilder.Append(linkurl("content", "zoujinwomen"));

        templateBuilder.Append("\">关于我们</a></li>	\r\n        <li><a href=\"");
        templateBuilder.Append(linkurl("content", "peisongshijian"));

        templateBuilder.Append("\">配送须知</a></li>\r\n        <li><a href=\"");
        templateBuilder.Append(linkurl("content", "lianxiwomen"));

        templateBuilder.Append("\">联系我们</a></li>										\r\n							</ul>\r\n						</div>\r\n						<div class=\"header_cart_box\">\r\n							<div class=\"header_cart\"> <a href=\"");
        templateBuilder.Append(linkurl("shopping", "cart"));

        templateBuilder.Append("\">购物车<script type=\"text/javascript\" src=\"");
        templateBuilder.Append(Utils.ObjectToStr(config.webpath));
        templateBuilder.Append("tools/submit_ajax.ashx?action=view_cart_count\"></");
        templateBuilder.Append("script>件</a></div>\r\n							<div class=\"small_cart\"></div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n\r\n	<div id=\"show_store_nav\">\r\n			<div class=\"header_subnavbox\">\r\n				<div class=\"header_subnav_header\">\r\n					<div style=\"width:1190px;height:32px;overflow:hidden;position:relative;z-index:1\">\r\n					<ul class=\"header_subnav\" style=\"width: 792px;\">\r\n                    ");
        DataTable category_list22 = get_category_child_list("goods", 0);

        int cdr22__loop__id = 0;
        foreach (DataRow cdr22 in category_list22.Rows)
        {
            cdr22__loop__id++;


            templateBuilder.Append("\r\n							<li class=\"subnav_li\"><a  class=\"class1\" class1_id=\"6461\" href=\"");
            templateBuilder.Append(linkurl("goods_list", Utils.ObjectToStr(cdr22["id"])));

            templateBuilder.Append("\">" + Utils.ObjectToStr(cdr22["title"]) + "</a><div class=\"header_button_a\"></div></li>\r\n			");
        }	//end for if

        templateBuilder.Append("\r\n					</ul>\r\n					</div>\r\n					<div class=\"header_subclass\">\r\n       ");
        DataTable category_list3 = get_category_child_list("goods", 0);

        int cdr3__loop__id = 0;
        foreach (DataRow cdr3 in category_list3.Rows)
        {
            cdr3__loop__id++;


            templateBuilder.Append("\r\n							<div class=\"header_subclass_nav\" style=\"display: none;\">\r\n								<div class=\"header_subclass_nav_content\">\r\n									<div class=\"header_subclass_nav_goods patt_header_subnav\">\r\n										<dl class=\"header_subclass_nav_a\">\r\n											<dt><a class=\"class2\" class2_id=\"7524\" href=\"");
            templateBuilder.Append(linkurl("goods_list", Utils.ObjectToStr(cdr3["id"])));

            templateBuilder.Append("\">" + Utils.ObjectToStr(cdr3["title"]) + "</a></dt>\r\n											<dd>\r\n             ");
            DataTable category_list21 = get_category_child_list("goods", Utils.StrToInt(Utils.ObjectToStr(cdr3["id"]), 0));

            int cdr21__loop__id = 0;
            foreach (DataRow cdr21 in category_list21.Rows)
            {
                cdr21__loop__id++;


                templateBuilder.Append("\r\n												<em><a class=\"class3\" class3_id=\"10006\" href=\"");
                templateBuilder.Append(linkurl("goods_list", Utils.ObjectToStr(cdr21["id"])));

                templateBuilder.Append("\">" + Utils.ObjectToStr(cdr21["title"]) + "</a></em>\r\n											    ");
            }	//end for if

            templateBuilder.Append("\r\n											</dd>\r\n										</dl>\r\n										\r\n									</div>\r\n								</div>\r\n							</div>\r\n              ");
        }	//end for if

        templateBuilder.Append("\r\n\r\n					</div>\r\n				</div>\r\n			</div>\r\n	</div>\r\n</div>");


        templateBuilder.Append("\r\n<!--/Header-->\r\n<div  style=\"height:10px;\"></div>\r\n\r\n<div class=\"boxwrap\">\r\n  <div class=\"left180\">\r\n    <!--Sidebar-->\r\n    ");

        templateBuilder.Append("    <div class=\"sidebar\">\r\n      <h3>交易管理</h3>\r\n      <ul>\r\n        <li><a href=\"");
        templateBuilder.Append(linkurl("userorder", "list"));

        templateBuilder.Append("\">交易订单</a></li>\r\n        ");
        templateBuilder.Append("<li><a href=\"");
        templateBuilder.Append(linkurl("userorder", "close"));

        templateBuilder.Append("\">已关闭订单</a></li>");
        templateBuilder.Append("\r\n      </ul>\r\n   ");
        
        //templateBuilder.Append("<h3>账户管理</h3>\r\n      <ul>\r\n        <li><a href=\"");
        //templateBuilder.Append(linkurl("useramount", "recharge"));
        //templateBuilder.Append("\">账户余额</a></li>\r\n        <li><a href=\"");
        //templateBuilder.Append(linkurl("userpoint", "convert"));
        //templateBuilder.Append("\">我的积分</a></li>\r\n        <li><a href=\"");
        //templateBuilder.Append(linkurl("usermessage", "system"));
        //templateBuilder.Append("\">站内短信</a></li>\r\n        <li><a href=\"");
        //templateBuilder.Append(linkurl("usercenter", "invite"));
        //templateBuilder.Append("\">邀请码</a></li>\r\n      </ul>\r\n     ");
        
        templateBuilder.Append("<h3>基本资料</h3>\r\n      <ul>\r\n        <li><a href=\"");
        templateBuilder.Append(linkurl("usercenter", "proinfo"));

        templateBuilder.Append("\">个人资料</a></li>\r\n        <li><a href=\"");
        templateBuilder.Append(linkurl("usercenter", "password"));

        templateBuilder.Append("\">修改密码</a></li>\r\n        <li><a href=\"");
        templateBuilder.Append(linkurl("usercenter", "exit"));

        templateBuilder.Append("\">退出登录</a></li>\r\n      </ul>\r\n    </div>");


        templateBuilder.Append("\r\n    <!--/Sidebar-->\r\n  </div>\r\n  \r\n  <div class=\"right757\">\r\n    <h1 class=\"main_tit\">\r\n      <span><a href=\"");
        templateBuilder.Append(linkurl("usercenter", "index"));

        templateBuilder.Append("\">管理首页</a></span>\r\n      我的订单\r\n      <strong>Order</strong>\r\n    </h1>\r\n    ");
        if (action == "list")
        {

            templateBuilder.Append("\r\n    <!--交易订单-->\r\n    <div class=\"tab_head\">\r\n      <ul class=\"tabs\">\r\n        <li class=\"selected\"><a href=\"");
            templateBuilder.Append(linkurl("userorder", "list"));

            templateBuilder.Append("\">交易订单</a></li>\r\n        <li><a href=\"");
            templateBuilder.Append(linkurl("userorder", "close"));

            templateBuilder.Append("\">已关闭订单</a></li>\r\n      </ul>\r\n    </div>\r\n    \r\n   ");
            templateBuilder.Append("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"ftable\">\r\n     ");
            templateBuilder.Append("<tr>\r\n        ");
            templateBuilder.Append("<th width=\"12%\" align=\"left\">订单号</th>\r\n        ");
            templateBuilder.Append("<th width=\"10%\">订单日期</th>\r\n        ");
            templateBuilder.Append("<th width=\"10%\">结算方式</th>\r\n        ");
            templateBuilder.Append("<th width=\"10%\">发票抬头</th>\r\n        ");
            templateBuilder.Append("<th width=\"10%\">发票内容</th>\r\n        ");
            templateBuilder.Append("<th width=\"10%\">订单备注</th>\r\n        ");
            templateBuilder.Append("<th width=\"8%\">制单人</th>\r\n        ");
            templateBuilder.Append("<th width=\"10%\">订单总价</th>\r\n        "); 
            templateBuilder.Append("<th width=\"10%\">订单状态</th>\r\n        ");
            templateBuilder.Append("<th width=\"10%\">操作</th>\r\n      </tr>\r\n      ");
            DataTable list1 = get_order_list(10, page, "user_id='" + userModel.id + "' and status<=3", out totalcount);

            templateBuilder.Append(" <!--取得一个DataTable-->\r\n      ");
            string pagelist1 = get_page_link(10, page, totalcount, "userorder", action, "__id__");

            templateBuilder.Append(" <!--取得分页页码列表-->\r\n      ");
            foreach (DataRow dr in list1.Rows)
            {

                templateBuilder.Append("\r\n      <tr>\r\n        ");
                templateBuilder.Append("<td>" + Utils.ObjectToStr(dr["order_no"]) + "</td>\r\n        ");
              
                //List<Model.article> ls = get_order_goods_list(Utils.StrToInt(Utils.ObjectToStr(dr["id"]), 0));
                //if (ls != null)
                //{
                //    foreach (Model.article modelt in ls)
                //    {
                //        templateBuilder.Append("\r\n          <a target=\"_blank\" title=\"");
                //        templateBuilder.Append(Utils.ObjectToStr(modelt.title));
                //        templateBuilder.Append("\" href=\"");
                //        templateBuilder.Append(linkurl("goods_show", modelt.id));
                //        templateBuilder.Append("\"><img width=\"60\" height=\"60\" alt=\"");
                //        templateBuilder.Append(Utils.ObjectToStr(modelt.title));
                //        templateBuilder.Append("\" src=\"");
                //        templateBuilder.Append(Utils.ObjectToStr(modelt.img_url));
                //        templateBuilder.Append("\"></a>\r\n          ");
                //    }	//end for if
                //}	//end for if
                //order_no add_time,payment_id,invoice,invoice_content,remark,user_name,order_amount
                //订单编号、订单日期、结算方式、发票抬头、发票内容、订单备注、制单人、订单总价
                templateBuilder.Append("<td>" + Utils.ObjectToStr(dr["add_time"]) + "</td>");
                templateBuilder.Append("<td>" + get_payment_title(Utils.StrToInt(Utils.ObjectToStr(dr["payment_id"]), 0)).ToString() + "</td>");
                templateBuilder.Append("<td>" + Utils.ObjectToStr(dr["invoice"]) + "</td>");
                templateBuilder.Append("<td>" + Utils.ObjectToStr(dr["invoice_content"]) + "</td>");
                templateBuilder.Append("<td>" + Utils.ObjectToStr(dr["remark"]) + "</td>");
                templateBuilder.Append("<td>" + Utils.ObjectToStr(dr["user_name"]) + "</td>");
                templateBuilder.Append("<td><strong>￥" + Utils.ObjectToStr(dr["order_amount"]) + "</strong></td>");
                templateBuilder.Append("<td>" + get_order_status(Utils.StrToInt(Utils.ObjectToStr(dr["id"]), 0)).ToString() + "</td>");
                templateBuilder.Append("<td align=\"center\">\r\n          <a href=\"");
                templateBuilder.Append(linkurl("userorder_show", Utils.ObjectToStr(dr["id"])));
                templateBuilder.Append("\">查看订单</a><br />\r\n          ");
                if (get_order_payment_status(Utils.StrToInt(Utils.ObjectToStr(dr["id"]), 0)))
                {
                    templateBuilder.Append("\r\n          <a href=\"");
                    templateBuilder.Append(linkurl("payment", "confirm", Utils.ObjectToStr(dr["order_no"])));
                    templateBuilder.Append("\">去付款</a> |\r\n          ");
                }	//end for if

                if (Utils.StrToInt(Utils.ObjectToStr(dr["status"]), 0) < 2)
                {
                    templateBuilder.Append("\r\n          <a href=\"javascript:;\" onclick=\"clickSubmit('");
                    templateBuilder.Append(Utils.ObjectToStr(config.webpath));
                    templateBuilder.Append("tools/submit_ajax.ashx?action=order_cancel&order_no=" + Utils.ObjectToStr(dr["order_no"]) + "');\">取消</a>\r\n          ");
                }	//end for if

                templateBuilder.Append("\r\n        </td>\r\n      </tr>\r\n      ");
            }	//end for if

            if (totalcount < 1)
            {

                templateBuilder.Append("\r\n      <tr><td colspan=\"8\" align=\"center\">暂无记录</td></tr>\r\n      ");
            }	//end for if

            templateBuilder.Append("\r\n    </table>\r\n    \r\n    <div class=\"page_foot\">\r\n      <div class=\"flickr right\">");
            templateBuilder.Append(Utils.ObjectToStr(pagelist1));
            templateBuilder.Append("</div><!--放置页码列表-->\r\n    </div>\r\n    <!--交易订单-->\r\n    \r\n    ");
        }
        else if (action == "close")
        {

            templateBuilder.Append("\r\n    <div class=\"tab_head\">\r\n      <ul class=\"tabs\">\r\n        <li><a href=\"");
            templateBuilder.Append(linkurl("userorder", "list"));

            templateBuilder.Append("\">交易订单</a></li>\r\n        <li class=\"selected\"><a href=\"");
            templateBuilder.Append(linkurl("userorder", "close"));

            templateBuilder.Append("\">已关闭订单</a></li>\r\n      </ul>\r\n    </div>\r\n    \r\n    ");
            templateBuilder.Append("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"ftable\">\r\n      ");
            templateBuilder.Append("<tr>\r\n        ");
            templateBuilder.Append("<th width=\"12%\" align=\"left\">订单号</th>\r\n        ");
            templateBuilder.Append("<th width=\"10%\">订单日期</th>\r\n        ");
            templateBuilder.Append("<th width=\"10%\">结算方式</th>\r\n        ");
            templateBuilder.Append("<th width=\"10%\">发票抬头</th>\r\n        ");
            templateBuilder.Append("<th width=\"10%\">发票内容</th>\r\n        ");
            templateBuilder.Append("<th width=\"10%\">订单备注</th>\r\n        ");
            templateBuilder.Append("<th width=\"8%\">制单人</th>\r\n        ");
            templateBuilder.Append("<th width=\"10%\">订单总价</th>\r\n        ");
            templateBuilder.Append("<th width=\"10%\">订单状态</th>\r\n        ");
            templateBuilder.Append("<th width=\"10%\">操作</th>\r\n      </tr>\r\n      ");
            
            DataTable list2 = get_order_list(10, page, "user_id='" + userModel.id + "' and status>3", out totalcount);

            templateBuilder.Append(" <!--取得一个DataTable-->\r\n      ");
            string pagelist2 = get_page_link(10, page, totalcount, "userorder", action, "__id__");

            templateBuilder.Append(" <!--取得分页页码列表-->\r\n      ");
            foreach (DataRow dr in list2.Rows)
            {

                templateBuilder.Append("\r\n      <tr>\r\n        ");
                templateBuilder.Append("<td>" + Utils.ObjectToStr(dr["order_no"]) + "</td>\r\n        ");

                //List<Model.article> ls = get_order_goods_list(Utils.StrToInt(Utils.ObjectToStr(dr["id"]), 0));
                //if (ls != null)
                //{
                //    foreach (Model.article modelt in ls)
                //    {
                //        templateBuilder.Append("\r\n          <a target=\"_blank\" title=\"");
                //        templateBuilder.Append(Utils.ObjectToStr(modelt.title));
                //        templateBuilder.Append("\" href=\"");
                //        templateBuilder.Append(linkurl("goods_show", modelt.id));
                //        templateBuilder.Append("\"><img width=\"60\" height=\"60\" alt=\"");
                //        templateBuilder.Append(Utils.ObjectToStr(modelt.title));
                //        templateBuilder.Append("\" src=\"");
                //        templateBuilder.Append(Utils.ObjectToStr(modelt.img_url));
                //        templateBuilder.Append("\"></a>\r\n          ");
                //    }	//end for if
                //}	//end for if
                //order_no add_time,payment_id,invoice,invoice_content,remark,user_name,order_amount
                //订单编号、订单日期、结算方式、发票抬头、发票内容、订单备注、制单人、订单总价
                templateBuilder.Append("<td>" + Utils.ObjectToStr(dr["add_time"]) + "</td>");
                templateBuilder.Append("<td>" + get_payment_title(Utils.StrToInt(Utils.ObjectToStr(dr["payment_id"]), 0)).ToString() + "</td>");
                templateBuilder.Append("<td>" + Utils.ObjectToStr(dr["invoice"]) + "</td>");
                templateBuilder.Append("<td>" + Utils.ObjectToStr(dr["invoice_content"]) + "</td>");
                templateBuilder.Append("<td>" + Utils.ObjectToStr(dr["remark"]) + "</td>");
                templateBuilder.Append("<td>" + Utils.ObjectToStr(dr["user_name"]) + "</td>");
                templateBuilder.Append("<td><strong>￥" + Utils.ObjectToStr(dr["order_amount"]) + "</strong></td>");
                templateBuilder.Append("<td>" + get_order_status(Utils.StrToInt(Utils.ObjectToStr(dr["id"]), 0)).ToString() + "</td>");
                templateBuilder.Append("<td align=\"center\"><a href=\"");
                templateBuilder.Append(linkurl("userorder_show", Utils.ObjectToStr(dr["id"])));

                templateBuilder.Append("\">查看订单</a></td>\r\n      </tr>\r\n      ");
            }	//end for if

            if (totalcount < 1)
            {

                templateBuilder.Append("\r\n      <tr><td colspan=\"8\" align=\"center\">暂无记录</td></tr>\r\n      ");
            }	//end for if

            templateBuilder.Append("\r\n    </table>\r\n    \r\n    <div class=\"page_foot\">\r\n      <div class=\"flickr right\">");
            templateBuilder.Append(Utils.ObjectToStr(pagelist2));
            templateBuilder.Append("</div><!--放置页码列表-->\r\n    </div>\r\n    ");
        }	//end for if

        templateBuilder.Append("\r\n  </div>\r\n</div>\r\n\r\n<div class=\"clear\"></div>\r\n</div>\r\n<!--Footer-->\r\n");

        templateBuilder.Append("<div id=\"footer\">\r\n		<div id=\"store_footer_box\">\r\n	<div class=\"footer-box\">\r\n			<ul class=\"footer\">\r\n\r\n        ");
        DataTable category_listfoot1 = get_category_child_list("content", 0);

        int cdrfoot1__loop__id = 0;
        foreach (DataRow cdrfoot1 in category_listfoot1.Rows)
        {
            cdrfoot1__loop__id++;


            templateBuilder.Append("\r\n				<li class=\"footer_firstlist\">\r\n					<dl class=\"footer_list_title\">\r\n						<dt>" + Utils.ObjectToStr(cdrfoot1["title"]) + "</dt>\r\n            ");
            DataTable category_listfoot2 = get_category_child_list("content", Utils.StrToInt(Utils.ObjectToStr(cdrfoot1["id"]), 0));

            int cdrfoot2__loop__id = 0;
            foreach (DataRow cdrfoot2 in category_listfoot2.Rows)
            {
                cdrfoot2__loop__id++;


                templateBuilder.Append("\r\n						<dd><a target=\"_blank\" href=\"");
                templateBuilder.Append(linkurl("content", Utils.ObjectToStr(cdrfoot2["call_index"])));

                templateBuilder.Append("\" rel=\"nofollow\">" + Utils.ObjectToStr(cdrfoot2["title"]) + "</a></dd>\r\n            ");
            }	//end for if

            templateBuilder.Append("\r\n					</dl>\r\n				</li>\r\n       ");
        }	//end for if

        templateBuilder.Append("\r\n\r\n			</ul>\r\n	</div>\r\n	<div class=\"footer_copyright\" id=\"store_footer\">\r\n		<div id=\"footer_content\">\r\n        <div style=\"text-align:center;\">\r\n        <div class=\"links\" style=\"margin:0px;padding:0px;color:#666666;font-family:Arial, Verdana, 宋体;text-align:center;white-space:normal;background-color:#FFFFFF;\">\r\n        <br />\r\n        <p align=\"center\" style=\"orphans:2;white-space:normal;widows:2;background-color:#FFFFFF;margin-top:0px;margin-bottom:0px;color:#666666;font-family:&#39;Microsoft YaHei&#39;, SimSun, Arial;padding:0px;\"><span style=\"outline:none;text-decoration:none;color:#666666;margin:0px;padding:0px;font-family:&#39;Microsoft YaHei&#39;;line-height:2;font-size:12px;\">ICP备案号： Copyright © 2014&nbsp;</span><span style=\"margin:0px;padding:0px;font-family:&#39;Microsoft YaHei&#39;;line-height:2;\"><span style=\"color:#666666;font-size:12px;\">All Rights Reserved </span>\r\n <span style=\"color:#666666;font-size:12px;\">&nbsp;</span></span><span style=\"margin:0px;padding:0px;font-family:&#39;Microsoft YaHei&#39;;line-height:2;color:#666666;font-size:12px;\">版权所有,违者必究</span> </p><p align=\"center\" style=\"orphans:2;white-space:normal;widows:2;background-color:#FFFFFF;margin-top:0px;margin-bottom:0px;color:#666666;font-family:&#39;Microsoft YaHei&#39;, SimSun, Arial;padding:0px;\"><img src=\"");
        templateBuilder.Append("/templates/green");
        templateBuilder.Append("/images/wKgJNFIjQWqAJKM9AAAIu06yUwg699.png\" style=\"border-style:none;vertical-align:middle;margin:0px;padding:0px;\"><span style=\"color:#666666;font-size:12px;\">&nbsp;</span><img title=\"网站备案\" src=\"");
        templateBuilder.Append("/templates/green");
        templateBuilder.Append("/images/wKgJNFIhXSiAHPFHAAAGom5QmAk433.png\" height=\"50\" width=\"110\" style=\"border-style:none;vertical-align:middle;margin:0px;padding:0px;\"><span style=\"color:#666666;font-size:12px;\">&nbsp;&nbsp;</span><img src=\"");
        templateBuilder.Append("/templates/green");
        templateBuilder.Append("/images/wKgJNFIy2qyAEa3yAAAMqg2PFik097.jpg\" style=\"border-style:none;vertical-align:middle;margin:0px;padding:0px;\"><span style=\"color:#666666;font-size:12px;\">&nbsp;</span><img title=\"网银\" src=\"");
        templateBuilder.Append("/templates/green");
        templateBuilder.Append("/images/wKgJNFIhXS-AVNvhAAAJ3K_rPvM818.png\" height=\"50\" width=\"140\" style=\"border-style:none;vertical-align:middle;margin:0px;padding:0px;\"><span style=\"color:#666666;font-size:12px;\">&nbsp;&nbsp;</span><span style=\"color:#666666;font-size:12px;\">&nbsp;</span></p><p align=\"center\" style=\"orphans:2;white-space:normal;widows:2;background-color:#FFFFFF;margin-top:0px;margin-bottom:0px;color:#666666;font-family:&#39;Microsoft YaHei&#39;, SimSun, Arial;padding:0px;\"><span style=\"margin:0px;padding:0px;font-family:&#39;Microsoft YaHei&#39;;line-height:2;color:#666666;font-size:12px;\">技术支持：&nbsp;</span><span style=\"outline:none;margin:0px;padding:0px;font-family:&#39;Microsoft YaHei&#39;;line-height:2;\"><span style=\"outline:none;text-decoration:none;color:#666666;margin:0px;padding:0px;font-size:12px;\"><a href=\"http://www.olshine.com/\" target=\"_blank\" style=\"outline:none;text-decoration:none;color:#2A586F;margin:0px;padding:0px;\"><span style=\"color:#666666;\">奥祥科技</span></a></span></span> </p></div></div></div>\r\n	</div>\r\n</div>\r\n</div>  \r\n\r\n<script src=\"");
        templateBuilder.Append("/templates/green");
        templateBuilder.Append("/images/header.js\" type=\"text/javascript\"></");
        templateBuilder.Append("script>\r\n<script type=\"text/javascript\">\r\n    show_store_nav();\r\n</");
        templateBuilder.Append("script>\r\n\r\n");


        templateBuilder.Append("\r\n<!--/Footer-->\r\n</body>\r\n</html>\r\n");
        Response.Write(templateBuilder.ToString());
    }
</script>
