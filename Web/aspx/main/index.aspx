<%@ Page Language="C#" AutoEventWireup="true" Inherits="Web.UI.Page.index" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by AoXiang Template Engine at 2014-11-26 21:30:55.
		本页面代码由AoXiang模板引擎生成于 2014-11-26 21:30:55. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);
	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title> ");
	templateBuilder.Append(Utils.ObjectToStr(config.webname));
	templateBuilder.Append("</title>\r\n<meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webkeyword));
	templateBuilder.Append("\" name=\"keywords\" />\r\n<meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webdescription));
	templateBuilder.Append("\" name=\"description\" />\r\n<link media=\"screen\" type=\"text/css\" rel=\"stylesheet\" href=\"");
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
    templateBuilder.Append("/images/cs_box.css\">\r\n<link media=\"screen\" type=\"text/css\" rel=\"stylesheet\"  href=\"");
    templateBuilder.Append("/templates/green");
	templateBuilder.Append("/images/bordercolor_2.css\" >\r\n\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/green");
    templateBuilder.Append("/images/jquery-1.11.1.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/green");
	templateBuilder.Append("/images/jquery-ui-1.11.1.custom.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/green");
	templateBuilder.Append("/images/common.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\"  src=\"");
	templateBuilder.Append("/templates/green");
	templateBuilder.Append("/images/jquery.filedownload.min.js\"></");
	templateBuilder.Append("script>\r\n <script type=\"text/javascript\"  src=\"");
	templateBuilder.Append("/templates/green");
	templateBuilder.Append("/js/gundong.js\"></");
    templateBuilder.Append("script>\r\n <script type=\"text/javascript\"  src=\"");
	templateBuilder.Append("/templates/green");
    templateBuilder.Append("/images/cs_box.js\"></");
	templateBuilder.Append("script>\r\n\r\n<script type=\"text/javascript\">\r\n    function getContentPath(path) {\r\n        var ContentPath = '/';\r\n        if (ContentPath.substr(ContentPath.length - 1, 1) != '/') {\r\n            ContentPath += '/';\r\n        }\r\n        return ContentPath + path;\r\n    }\r\n    function getScriptPath(path) {\r\n        var ScriptPath = '/';\r\n        if (ScriptPath.substr(ScriptPath.length - 1, 1) != '/') {\r\n            ScriptPath += '/';\r\n        }\r\n        return ScriptPath + \"Scripts/\" + path;\r\n    }\r\n    function getActionPath(action, controller) {\r\n        var ActionPath = '/';\r\n        if (ActionPath.substr(ActionPath.length - 1, 1) != '/') {\r\n            ActionPath += '/';\r\n        }\r\n        return ActionPath + controller + \"/\" + action;\r\n    }\r\n    function getFullActionPath(action, controller) {\r\n        var ActionPath = \"http://\" + window.location.host + '/';\r\n        if (ActionPath.substr(ActionPath.length - 1, 1) != '/') {\r\n            ActionPath += '/';\r\n        }\r\n        return ActionPath + controller + \"/\" + action;\r\n    }\r\n\r\n    function getFullPath(path) {\r\n        var FullPath = '/';\r\n        FullPath = \"http://\" + window.location.host + FullPath;\r\n        if (FullPath.substr(FullPath.length - 1, 1) != '/') {\r\n            FullPath += '/';\r\n        }\r\n        return FullPath + path;\r\n    }\r\n\r\n    $.cookie.json = true;\r\n</");
	templateBuilder.Append("script>\r\n\r\n<script src=\"");
	templateBuilder.Append("/templates/green");
	templateBuilder.Append("/images/share.js\"></");
    templateBuilder.Append("script>\r\n<body style=\"background-color: rgb(255, 255, 255);\">\r\n    <div id=\"main\">\r\n	\r\n<!--Header-->\r\n");

    templateBuilder.Append("<script src=\"");
    templateBuilder.Append("/templates/green");
        
    templateBuilder.Append("/images/logon_status.js\" type=\"text/javascript\"></");
	templateBuilder.Append("script>\r\n <script type=\"text/javascript\"  src=\"");
	templateBuilder.Append("/templates/green");
	templateBuilder.Append("/js/base.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\">\r\n    var Configure = {\r\n        Third_Jump: \"http://\",\r\n        ShowHeader: true,\r\n        ShowZhuyun: true,\r\n        ShowNav: true\r\n    };\r\n    var browser_now = new Date();\r\n    function is_logon() {\r\n        return logon_type != null;\r\n    }\r\n    function get_logon_type() {\r\n        return logon_type;\r\n    }\r\n    function get_logon_name() {\r\n        return logon_name;\r\n    }\r\n    function get_logon_now() {\r\n        return logon_now;\r\n    }\r\n    function get_real_now() {\r\n        var diff = browser_now.getTime() - logon_now.getTime();\r\n        var now = new Date();\r\n        return new Date(now.getTime() - diff);\r\n    }\r\n</");
    templateBuilder.Append("script>\r\n\r\n<div id=\"commerce\" style=\"position:absolute;z-index:100;\"> <div style=\"width:100;height:15px;font-size:12px;font-weight:bold;text-align:left;cursor:hand;\" OnClick=\"closead();\"><font color=\"blue\">关闭</font><br><a href=\"/jscss/\"><img src=\"/templates/green/images/commerce.jpg\" width=100 height=75></a></div><script type=\"text/javascript\"\r\n    var bodyfrm = ( document.compatMode.toLowerCase()==\"css1compat\" ) ? document.documentElement : document.body;\r\n   var adst = document.getElementById(\"commerce\").style;\r\n     adst.top = ( bodyfrm.clientHeight -530-2 ) + \"px\";\r\n\r\n    function moveR()   {\r\n     adst.top = ( bodyfrm.scrollTop + bodyfrm.clientHeight - 530-2) + \"px\"; \r\n      }\r\n  setInterval(\"moveR();\", 80);\r\n\r\n function closead()   {\r\n adst.display='none';\r\n        }\r\n</");
    templateBuilder.Append("script>\r\n\r\n<div id=\"store_header\">\r\n	<div class=\"header\">\r\n		<div class=\"header_tt\">\r\n        <a class=\"Collect\" href=\"javascript:window.external.AddFavorite('http://trade.aw-trade.com','A&W TRADE电子商务应用系统')\">收藏本站</a>	\r\n            		    <script type=\"text/javascript\">\r\n            		        $.ajax({\r\n            		            type: \"POST\",\r\n            		            url: \"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_check_login\",\r\n            		            dataType: \"json\",\r\n            		            timeout: 20000,\r\n            		            success: function (data, textStatus) {\r\n            		                if (data.status == 1) {\r\n            		                    $(\"#menu\").append('<li><a href=\"");
	templateBuilder.Append(linkurl("usercenter","exit"));

	templateBuilder.Append("\">退出</a></li>');\r\n            		                    $(\"#menu\").append('<li><a href=\"");
	templateBuilder.Append(linkurl("usercenter","index"));

	templateBuilder.Append("\">会员中心</a></li>');\r\n            		                } else {\r\n            		                    $(\"#menu\").append('<li><a href=\"");
	templateBuilder.Append(linkurl("register"));

	templateBuilder.Append("\"></a></li>');\r\n            		                    $(\"#menu\").append('<li><a href=\"");
	templateBuilder.Append(linkurl("login"));

	templateBuilder.Append("\">登录</a></li>');\r\n            		                }\r\n            		            }\r\n            		        });\r\n    </");
	templateBuilder.Append("script>\r\n            <ul class=\"header_login\" id=\"menu\" >\r\n      <li><a href=\"");
	templateBuilder.Append(linkurl("content","lianxiwomen"));

	templateBuilder.Append("\">联系我们</a></li>\r\n    \r\n			</ul>\r\n		</div>\r\n	</div>\r\n		<div id=\"header_content_box\"><div id=\"header_content\">\r\n</div></div>\r\n			<div class=\"header_style0\">\r\n				<div class=\"header_logo_content\">\r\n					<div class=\"header_logo_gox\">\r\n						<ul>\r\n							<li class=\"header_logo\" id=\"store_info_logo\"><a href=\"index.aspx\"><img alt=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webname));
	templateBuilder.Append("\" title=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webname));
	templateBuilder.Append("\" src=\"");
	templateBuilder.Append("/templates/green");
    templateBuilder.Append("/images/logo.jpg\"></a>  </li>\r\n							<li class=\"header_search\" id=\"show_store_search\">\r\n								<div class=\"header_search_input patt_bg_search patt_border_search\">\r\n<input id=\"keywords\" name=\"keywords\" remind=\"\" value=\"\" type=\"text\" x-webkit-speech=\"\" autofocus=\"\" placeholder=\"输入回车搜索\" onkeydown=\"if(event.keyCode==13){SiteSearch('");
	templateBuilder.Append(linkurl("search"));

	templateBuilder.Append("', '#keywords');return false};\" />\r\n      <a onclick=\"SiteSearch('");
	templateBuilder.Append(linkurl("search"));

	templateBuilder.Append("', '#keywords');\" ><p id=\"search_button\" class=\"patt_font_search\">搜索</p></a>						\r\n								</div>\r\n							</li>\r\n							<li class=\"header_ad\" id=\"store_info_ad\">\r\n								<ul>\r\n										<li class=\"ad_phone_photo\"><img src=\"");
	templateBuilder.Append("/templates/green");
    templateBuilder.Append("/images/ad_photo.png\"></li>\r\n										<li class=\"ad_phone\">00971(0)44343337</li>\r\n								</ul>\r\n							</li>\r\n						</ul>\r\n					</div>\r\n				</div>\r\n				<div class=\"header_navbox patt_bg_nav\">\r\n					<div class=\"header_nav\">\r\n						<div class=\"header_sort patt_bg_sort\">&nbsp;\r\n							<span>全部商品分类</span>\r\n							<div class=\"header_button_b\"></div>\r\n							<div class=\"Nav_TitleStyleBox\" style=\"position: absolute;top: 33px;width: 183px;left: -6px;display:none\">\r\n								<div class=\"nav_style1_main_content_border\">\r\n								<div class=\"nav_style1_main_content\">\r\n									<ul class=\"nav_style1_content nav_style1_color1\" style=\"cursor: default;\">\r\n         ");
	DataTable category_list33 = get_category_child_list("goods", 0);

	int cdr33__loop__id=0;
	foreach(DataRow cdr33 in category_list33.Rows)
	{
		cdr33__loop__id++;


	templateBuilder.Append("\r\n											<li class=\"class1 nav_style1_content_li\" class1_id=\"6461\"><p class=\"nav_p\"><a target=\"_blank\"  href=\"");
	templateBuilder.Append(linkurl("goods_list",Utils.ObjectToStr(cdr33["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(cdr33["title"]) + "</a></p><div class=\"nav_style1_button_arrow icon_nav_arrow\"></div></li>\r\n											");
	}	//end for if

	templateBuilder.Append("\r\n									</ul>\r\n         ");
	DataTable category_list44 = get_category_child_list("goods", 0);

	int cdr44__loop__id=0;
	foreach(DataRow cdr44 in category_list44.Rows)
	{
		cdr44__loop__id++;


	templateBuilder.Append("\r\n										<div class=\"nav_style1_sub patt_header_leftnav\" style=\"display: none;\">\r\n												<dl class=\"nav_style1_sub_class2\">\r\n													<dt class=\"class2\" class2_id=\"7524\"><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_list",Utils.ObjectToStr(cdr44["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(cdr44["title"]) + "</a></a></dt>\r\n													<dd>\r\n          ");
	DataTable category_list55 = get_category_child_list("goods", Utils.StrToInt(Utils.ObjectToStr(cdr44["id"]), 0));

	int cdr55__loop__id=0;
	foreach(DataRow cdr55 in category_list55.Rows)
	{
		cdr55__loop__id++;


	templateBuilder.Append("\r\n															<em class=\"class3\" class3_id=\"10006\"><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_list",Utils.ObjectToStr(cdr55["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(cdr55["title"]) + "</a></em>\r\n																");
	}	//end for if

	templateBuilder.Append("\r\n													</dd>\r\n												</dl>\r\n												\r\n										</div>\r\n									");
	}	//end for if

	templateBuilder.Append("\r\n								</div>\r\n								</div>\r\n							</div>\r\n						</div>\r\n						<div class=\"header_sortnav\" id=\"show_store_menu\">\r\n							<ul class=\"menu_hot\">\r\n\r\n         <li class=\"header_cheaked patt_bg_header_checked\"><a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">首页</a></li>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("goods"));

	templateBuilder.Append("\">购物商城</a></li>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("content","ruhexiadan"));

	templateBuilder.Append("\">购物流程</a></li>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("content","zoujinwomen"));

	templateBuilder.Append("\">关于我们</a></li>	\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("content","peisongshijian"));

	templateBuilder.Append("\">配送须知</a></li>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("content","lianxiwomen"));

	templateBuilder.Append("\">联系我们</a></li>										\r\n							</ul>\r\n						</div>\r\n						<div class=\"header_cart_box\">\r\n							<div class=\"header_cart\"> <a href=\"");
	templateBuilder.Append(linkurl("shopping","cart"));

	templateBuilder.Append("\">购物车<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=view_cart_count\"></");
	templateBuilder.Append("script>件</a></div>\r\n							<div class=\"small_cart\"></div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n\r\n	<div id=\"show_store_nav\">\r\n			<div class=\"header_subnavbox\">\r\n				<div class=\"header_subnav_header\">\r\n					<div style=\"width:1190px;height:32px;overflow:hidden;position:relative;z-index:1\">\r\n					<ul class=\"header_subnav\" style=\"width: 792px;\">\r\n                    ");
	DataTable category_list22 = get_category_child_list("goods", 0);

	int cdr22__loop__id=0;
	foreach(DataRow cdr22 in category_list22.Rows)
	{
		cdr22__loop__id++;


	templateBuilder.Append("\r\n							<li class=\"subnav_li\"><a  class=\"class1\" class1_id=\"6461\" href=\"");
	templateBuilder.Append(linkurl("goods_list",Utils.ObjectToStr(cdr22["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(cdr22["title"]) + "</a><div class=\"header_button_a\"></div></li>\r\n			");
	}	//end for if

	templateBuilder.Append("\r\n					</ul>\r\n					</div>\r\n					<div class=\"header_subclass\">\r\n       ");
	DataTable category_list3 = get_category_child_list("goods", 0);

	int cdr3__loop__id=0;
	foreach(DataRow cdr3 in category_list3.Rows)
	{
		cdr3__loop__id++;


	templateBuilder.Append("\r\n							<div class=\"header_subclass_nav\" style=\"display: none;\">\r\n								<div class=\"header_subclass_nav_content\">\r\n									<div class=\"header_subclass_nav_goods patt_header_subnav\">\r\n										<dl class=\"header_subclass_nav_a\">\r\n											<dt><a class=\"class2\" class2_id=\"7524\" href=\"");
	templateBuilder.Append(linkurl("goods_list",Utils.ObjectToStr(cdr3["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(cdr3["title"]) + "</a></dt>\r\n											<dd>\r\n             ");
	DataTable category_list21 = get_category_child_list("goods", Utils.StrToInt(Utils.ObjectToStr(cdr3["id"]), 0));

	int cdr21__loop__id=0;
	foreach(DataRow cdr21 in category_list21.Rows)
	{
		cdr21__loop__id++;


	templateBuilder.Append("\r\n												<em><a class=\"class3\" class3_id=\"10006\" href=\"");
	templateBuilder.Append(linkurl("goods_list",Utils.ObjectToStr(cdr21["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(cdr21["title"]) + "</a></em>\r\n											    ");
	}	//end for if

	templateBuilder.Append("\r\n											</dd>\r\n										</dl>\r\n										\r\n									</div>\r\n								</div>\r\n							</div>\r\n              ");
	}	//end for if

	templateBuilder.Append("\r\n\r\n					</div>\r\n				</div>\r\n			</div>\r\n	</div>\r\n</div>");


	templateBuilder.Append("\r\n<!--/Header-->\r\n\r\n	<div id='cs_box'><span class='cs_title'>在线咨询</span>	<span class='cs_close'>x</span>	<div class='cs_img'></div>	<span class='cs_info'></span>	<div class='cs_btn'>点击咨询</div></div><script type=\"text/javascript\">	myEvent(window,'load',function(){		cs_box.set({			img_path : 'images/01.jpg',		//设置图片路径		});	});</");


    templateBuilder.Append("script>	<div class=\"contentmainbox\">\r\n			<div id=\"display_containers\" style=\"height:2400px;\">\r\n		\r\n        <div class=\"plugin_containers\" style=\"left: 0px; top: 0px; width: 196px; height: 350px; z-index: 10;\" layout_id=\"11402904\" plugin_type=\"5\" plugin_data_show_title=\"1\" plugin_data_style=\"1\" plugin_data_type=\"0\" x=\"0\" y=\"0\" cx=\"1\" cy=\"7\">\r\n		<div class=\"plugin_body\" style=\"width:196px;height:350px;\">\r\n					<div class=\"plugin_untitle_border patt_border_plugin_untitle\" style=\"width: 174px; height: 328px;\">\r\n						<div class=\"plugin_inner_content\" style=\"width: 174px; height: 328px;\">\r\n					<div class=\"nav_style1_main_content\">\r\n						<ul class=\"nav_style1_content nav_style1_color1\" style=\"cursor: default;\">\r\n\r\n          ");
	DataTable category_list27 = get_category_child_list("goods", 0);

	int cdr27__loop__id=0;
	foreach(DataRow cdr27 in category_list27.Rows)
	{
		cdr27__loop__id++;


	templateBuilder.Append("\r\n		<li class=\"class1 nav_style1_content_li\" class1_id=\"6461\"><p class=\"nav_p\"><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_list",Utils.ObjectToStr(cdr27["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(cdr27["title"]) + "</a></p><div class=\"nav_style1_button_arrow icon_nav_arrow\"></div></li>\r\n			");
	}	//end for if

	templateBuilder.Append("\r\n\r\n						</ul>\r\n                               ");
	DataTable category_list25 = get_category_child_list("goods", 0);

	int cdr25__loop__id=0;
	foreach(DataRow cdr25 in category_list25.Rows)
	{
		cdr25__loop__id++;


	templateBuilder.Append("\r\n							<div class=\"nav_style1_sub patt_border_leftnav\" style=\"display: none;\">\r\n									<dl class=\"nav_style1_sub_class2\">\r\n										<dt class=\"class2\" class2_id=\"7524\"><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_list",Utils.ObjectToStr(cdr25["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(cdr25["title"]) + "</a></dt>\r\n										<dd>\r\n											  ");
	DataTable category_list26 = get_category_child_list("goods", Utils.StrToInt(Utils.ObjectToStr(cdr25["id"]), 0));

	int cdr26__loop__id=0;
	foreach(DataRow cdr26 in category_list26.Rows)
	{
		cdr26__loop__id++;


	templateBuilder.Append("\r\n												<em><a class=\"class3\" class3_id=\"10020\" target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_list",Utils.ObjectToStr(cdr26["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(cdr26["title"]) + "</a></em>\r\n			 ");
	}	//end for if

	templateBuilder.Append("\r\n										</dd>\r\n									</dl>\r\n									\r\n							</div>\r\n                 ");
	}	//end for if

	templateBuilder.Append("\r\n							\r\n					</div>\r\n</div>\r\n					</div>\r\n		</div>\r\n		</div>\r\n		<div class=\"plugin_containers\" style=\"left:196px;top:0px;width:710px;height:350px;\" layout_id=\"11402905\" plugin_type=\"0\" plugin_data_show_title=\"0\" plugin_data_style=\"1\" plugin_data_type=\"0\" x=\"1\" y=\"0\" cx=\"1\" cy=\"7\">\r\n		<div class=\"plugin_body\" style=\"width:710px;height:350px;\">\r\n					<div class=\"plugin_untitle_noborder\" style=\"width: 700px; height: 340px;\">\r\n						<div class=\"plugin_inner_content\" style=\"width: 700px; height: 340px;\">\r\n		<div class=\"plugin_advertising_content\" direction=\"1\" interval=\"2000\">\r\n				<div class=\"slideshow\" style=\"width: 7000px; height: 340px;\">\r\n					<div class=\"caroufredsel_wrapper\" style=\"display: block; text-align: start; float: none; position: absolute; top: 0px; right: auto; bottom: auto; left: auto; z-index: 0; width: 700px; height: 340px; margin: 0px; overflow: hidden;\"><ul class=\"slides\" style=\"text-align: left; float: none; position: absolute; top: 0px; right: auto; bottom: auto; left: 0px; margin: 0px; width: 6300px; height: 340px; z-index: 0;\">											\r\n	     ");
	DataTable topad1 = get_article_list("photo", 0, 8, "status=0 and category_id=93","sort_id asc,add_time desc");

	foreach(DataRow dr in topad1.Rows)
	{

	templateBuilder.Append("\r\n                	<li style=\"width: 700px; height: 340px;\"><a href=\"" + Utils.ObjectToStr(dr["link_url"]) + "\" target=\"_blank\"><img class=\"lazy adv_image\" index=\"1\" src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" data-original=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" style=\"width: 700px; height: 340px; display: inline;\"></a></li>\r\n          ");
	}	//end for if

    templateBuilder.Append("      \r\n                    \r\n                    </ul></div>\r\n				</div>\r\n				<div class=\"prev_arrow_box plugin_touch_cancel\" style=\"display: none;\"><div class=\"prev_arrow\" style=\"top: 149px;\"></div></div>\r\n				<div class=\"next_arrow_box plugin_touch_cancel\" style=\"display: none;\"><div class=\"next_arrow\" style=\"top: 149px;\"></div></div>\r\n		</div>\r\n</div>\r\n					</div>\r\n		</div>\r\n		</div>\r\n		<div class=\"plugin_containers\" style=\"left:0px;top:350px;width:906px;height:300px;\" layout_id=\"11402906\" plugin_type=\"3\" plugin_data_show_title=\"3\" plugin_data_style=\"0\" plugin_data_type=\"0\" x=\"0\" y=\"7\" cx=\"2\" cy=\"6\">\r\n		<div class=\"plugin_body\" style=\"width:906px;height:300px;\">\r\n				<div class=\"showcase_TitleBox\">\r\n					<ul class=\"showcase_type1_title patt_border_showcase_type1_title\">\r\n						<li class=\"label_list bg_a patt_bg_plugin_title\" label_id=\"0\" processed=\"true\">\r\n							<a href=\"javascript:void(0)\"><div>推荐商品</div></a>\r\n						</li>\r\n						<li class=\"label_list bg_a patt_bg_plugin_title\" label_id=\"1\">\r\n							<a href=\"javascript:void(0)\"><div>新品上架</div></a>\r\n						</li>\r\n						<li class=\"label_list bg_a patt_bg_plugin_title\" label_id=\"2\">\r\n							<a href=\"javascript:void(0)\"><div>随机展示</div></a>\r\n						</li>\r\n					</ul>\r\n				</div>\r\n			<div class=\"plugin_inner_border showcase_type1-inner-border patt_border_showcase_type1_inner\">\r\n				<div class=\"showcase_type1-inner\">\r\n					<div class=\"plugin_inner_content\" style=\"width: 884px; height: 240px;\">\r\n		<div class=\"showcase_main_content\" goods_style=\"0\">\r\n<ul class=\"showcase_type1_goods\" lazy=\"1\" style=\"display: block;\">\r\n	  ");
	DataTable topgoods = get_article_list("goods", 0, 6, "is_top=1","add_time desc");

	foreach(DataRow dr in topgoods.Rows)
	{

        templateBuilder.Append("\r\n    	   			<li class=\"goods_list\" label_id=\"0\" goods_id=\"8676\" RuleId=\"6275\" RuleType=\"1\" RuleStartTime=\"\\/Date(1379779200000)\\/\" RuleEndTime=\"\\/Date(1444233600000)\\/\" Price=\"188800\" DiscountPrice=\"10000\" style=\"padding: 12px 5px 8px;\">\r\n				<div class=\"showcase_goods_style0\">\r\n					<div class=\"showcase_goods_style0_img\">\r\n						<a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\"><img class=\"lazy\" src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(dr["title"]) + "\"  data-original=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" style=\"width: 166px; height: 166px; margin-left: 0px; margin-top: 0px; display: inline;\"></a>\r\n						<div id=\"sales_icon\"><div class=\"sales_reduce\"></div></div>\r\n					</div>\r\n					<div class=\"showcase_goods_style0_intro\"><p class=\"nav_p_hover\"><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\" title=\"" + Utils.ObjectToStr(dr["title"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "</a></p></div>\r\n					<p class=\"showcase_goods_style0_rmb\">\r\n						<strong>现价：¥ <em id=\"sales_price\">" + Utils.ObjectToStr(dr["sell_price"]) + "</em></strong>\r\n					</p>\r\n				</div>\r\n	</li>\r\n       ");
	}	//end for if

	templateBuilder.Append("\r\n				</ul>\r\n\r\n				<ul class=\"showcase_type1_goods\" style=\"display: none;\">\r\n		  ");
	DataTable redgoods = get_article_list("goods", 0, 6, "is_red=1","add_time desc");

	foreach(DataRow dr in redgoods.Rows)
	{

	templateBuilder.Append("\r\n    <li class=\"goods_list\" label_id=\"1\" goods_id=\"8670\" RuleId=\"\" RuleType=\"\" RuleStartTime=null RuleEndTime=null Price=\"249900\" DiscountPrice=\"\"style=\"padding: 12px 5px 8px;\">\r\n				<div class=\"showcase_goods_style0\">\r\n					<div class=\"showcase_goods_style0_img\">\r\n						<a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\"><img class=\"lazy\" src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(dr["title"]) + "\"  data-original=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" style=\"width: 166px; height: 166px; margin-left: 0px; margin-top: 0px; display: inline;\"></a>\r\n						<div id=\"Div1\"><div class=\"sales_reduce\"></div></div>\r\n					</div>\r\n					<div class=\"showcase_goods_style0_intro\"><p class=\"nav_p_hover\"><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\" title=\"" + Utils.ObjectToStr(dr["title"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "</a></p></div>\r\n					<p class=\"showcase_goods_style0_rmb\">\r\n						<strong>现价：¥ <em id=\"Em1\">" + Utils.ObjectToStr(dr["sell_price"]) + "</em></strong>\r\n					</p>\r\n				</div>\r\n	</li>\r\n       ");
	}	//end for if

	templateBuilder.Append("\r\n				</ul>\r\n				<ul class=\"showcase_type1_goods\" style=\"display: none;\">\r\n	  ");
	DataTable hotgoods = get_article_list("goods", 0, 6, "is_hot=1","add_time desc");

	foreach(DataRow dr in hotgoods.Rows)
	{

	templateBuilder.Append("\r\n   <li class=\"goods_list\" label_id=\"2\" goods_id=\"8671\" RuleId=\"\" RuleType=\"\" RuleStartTime=null RuleEndTime=null  DiscountPrice=\"\"style=\"padding: 12px 5px 8px;\">\r\n				<div class=\"showcase_goods_style0\">\r\n					<div class=\"showcase_goods_style0_img\">\r\n						<a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\"><img class=\"lazy\" src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(dr["title"]) + "\"  data-original=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" style=\"width: 166px; height: 166px; margin-left: 0px; margin-top: 0px; display: inline;\"></a>\r\n						<div id=\"Div2\"><div class=\"sales_reduce\"></div></div>\r\n					</div>\r\n					<div class=\"showcase_goods_style0_intro\"><p class=\"nav_p_hover\"><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\" title=\"" + Utils.ObjectToStr(dr["title"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "</a></p></div>\r\n					<p class=\"showcase_goods_style0_rmb\">\r\n						<strong>现价：¥ <em id=\"Em2\">" + Utils.ObjectToStr(dr["sell_price"]) + "</em></strong>\r\n					</p>\r\n				</div>\r\n	</li>\r\n       ");
	}	//end for if

	templateBuilder.Append("\r\n				</ul>\r\n				\r\n		</div>\r\n</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n		</div>\r\n		\r\n		<div class=\"plugin_containers\" style=\"left:-1000px;top:-1000px;width:0px;height:0px;\" layout_id=\"11402910\" plugin_type=\"4\" plugin_data_show_title=\"3\" plugin_data_style=\"2\" plugin_data_type=\"0\" x=\"0\" y=\"23\" cx=\"1\" cy=\"11\">\r\n		<div class=\"plugin_body\" style=\"width:0px;height:0px;\">\r\n			<div class=\"plugin_title_border patt_border_plugin_title\" style=\"width: 0px; height: 0px;\">\r\n				<div class=\"plugin_title_pic bg_a patt_bg_plugin_title\">\r\n					<div class=\"plugin_title patt_font_plugin_title\"></div>\r\n				</div>\r\n				<div class=\"plugin_inner_border\">\r\n					<div class=\"plugin_inner_content\" style=\"width: 0px; height: 0px;\">\r\n		<div class=\"showcase_main_content\" goods_style=\"0\" roll=\"False\" direction=\"2\" interval=\"2000\">\r\n			<ul class=\"showcase_type2_goods\">	\r\n            \r\n                  ");
	DataTable goodsf11 = get_article_list("goods", 2, 3, "is_top=1","add_time desc");

	foreach(DataRow dr in goodsf11.Rows)
	{

	templateBuilder.Append("\r\n\r\n    	<li class=\"goods_list\" label_id=\"0\" goods_id=\"8683\" ruleid=\"6275\" ruletype=\"1\" rulestarttime=\"\\/Date(1379779200000)\\/\" ruleendtime=\"\\/Date(1444233600000)\\/\" price=\"232200\" discountprice=\"10000\" style=\"width: 174px;\">\r\n			<div class=\"showcase_goods_style2\">\r\n				<div class=\"showcase_goods_style2_img plugin_touch_cancel\">\r\n					<a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\"><img class=\"lazy\"src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(dr["title"]) + "\"  data-original=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" style=\"display: inline;\"></a>\r\n				</div>\r\n				<div class=\"a_text\" style=\"width: 79px;\">\r\n					<div class=\"a_text_dt\"><p class=\"nav_p_hover\"><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\" title=\"" + Utils.ObjectToStr(dr["title"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "</a></p></div>\r\n					<div class=\"a_text_dd\"><strong>¥ <em id=\"Em10\">" + Utils.ObjectToStr(dr["sell_price"]) + "</em></strong></div>\r\n				</div>\r\n			</div>\r\n	</li>\r\n      ");
	}	//end for if

	DataTable goodsf21 = get_article_list("goods", 14, 2, "is_top=1","add_time desc");

	foreach(DataRow dr in goodsf21.Rows)
	{

	templateBuilder.Append("\r\n\r\n    	<li class=\"goods_list\" label_id=\"0\" goods_id=\"8683\" ruleid=\"6275\" ruletype=\"1\" rulestarttime=\"\\/Date(1379779200000)\\/\" ruleendtime=\"\\/Date(1444233600000)\\/\" price=\"232200\" discountprice=\"10000\" style=\"width: 174px;\">\r\n			<div class=\"showcase_goods_style2\">\r\n				<div class=\"showcase_goods_style2_img plugin_touch_cancel\">\r\n					<a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\"><img class=\"lazy\"src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(dr["title"]) + "\"  data-original=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" style=\"display: inline;\"></a>\r\n				</div>\r\n				<div class=\"a_text\" style=\"width: 79px;\">\r\n					<div class=\"a_text_dt\"><p class=\"nav_p_hover\"><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\" title=\"" + Utils.ObjectToStr(dr["title"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "</a></p></div>\r\n					<div class=\"a_text_dd\"><strong>¥ <em id=\"Em7\">" + Utils.ObjectToStr(dr["sell_price"]) + "</em></strong></div>\r\n				</div>\r\n			</div>\r\n	</li>\r\n      ");
	}	//end for if

    templateBuilder.Append("\r\n	\r\n</ul>\r\n		</div>\r\n</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n		</div>\r\n		<div class=\"plugin_containers\" style=\"left:0px;top:650px;width:906px;height:550px;\" layout_id=\"11402911\" plugin_type=\"2\" plugin_data_show_title=\"3\" plugin_data_style=\"0\" plugin_data_type=\"0\" x=\"1\" y=\"23\" cx=\"1\" cy=\"11\">\r\n		<div class=\"plugin_body\" style=\"width:906px;height:550px;\">\r\n			<div class=\"plugin_title_border patt_border_plugin_title\" style=\"width: 698px; height: 538px;\">\r\n				<div class=\"plugin_title_pic bg_a patt_bg_plugin_title\">\r\n					<div class=\"plugin_title patt_font_plugin_title\">泥浆泵系列</div>\r\n						<ul class=\"plugin_title_searchkey\">\r\n						</ul>\r\n				</div>\r\n				<div class=\"plugin_inner_border\">\r\n					<div class=\"plugin_inner_content\" style=\"width: 688px; height: 490px;\">\r\n		<div class=\"showcase_main_content\" goods_style=\"0\" roll=\"False\" direction=\"2\" interval=\"2000\">\r\n			<ul class=\"showcase_type0_goods\">\r\n\r\n      ");
	DataTable goodsf1 = get_article_list("goods", 2, 10, "1=1","add_time desc");

	foreach(DataRow dr in goodsf1.Rows)
	{

	templateBuilder.Append("\r\n        <li class=\"goods_list\" label_id=\"0\" goods_id=\"" + Utils.ObjectToStr(dr["id"]) + "\" RuleId=\"" + Utils.ObjectToStr(dr["id"]) + "\" RuleType=\"\" RuleStartTime=null RuleEndTime=null Price=\"" + Utils.ObjectToStr(dr["sell_price"]) + "\" DiscountPrice=\"\" style=\"padding: 12px 3px 8px;\">\r\n				<div class=\"showcase_goods_style0\">\r\n					<div class=\"showcase_goods_style0_img\">\r\n						<a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\"><img class=\"lazy\" src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(dr["title"]) + "\"  data-original=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" style=\"width: 166px; height: 166px; margin-left: 0px; margin-top: 0px; display: inline;\"></a>\r\n						<div id=\"sales_icon\"><div class=\"sales_reduce\"></div></div>\r\n					</div>\r\n					<div class=\"showcase_goods_style0_intro\"><p class=\"nav_p_hover\"><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\" title=\"" + Utils.ObjectToStr(dr["title"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "</a></p></div>\r\n					<p class=\"showcase_goods_style0_rmb\">\r\n						<strong>现价：¥ <em id=\"Em21\">" + Utils.ObjectToStr(dr["sell_price"]) + "</em></strong>\r\n					</p>\r\n				</div>\r\n	</li>\r\n\r\n      ");
	}	//end for if

	templateBuilder.Append("\r\n\r\n</ul>\r\n		</div>\r\n</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n		</div>\r\n		<div class=\"plugin_containers\" style=\"left:906px;top:350px;width:294px;height:600px;\" layout_id=\"11402912\" plugin_type=\"1\" plugin_data_show_title=\"3\" plugin_data_style=\"1\" plugin_data_type=\"8\" x=\"2\" y=\"7\" cx=\"1\" cy=\"6\">\r\n		<div class=\"plugin_body\" style=\"width:294px;height:850px;\">\r\n			<div class=\"plugin_title_border patt_border_plugin_title\" style=\"width: 282px; height: 288px;\">\r\n				<div class=\"plugin_title_pic bg_a patt_bg_plugin_title\">\r\n					<div class=\"plugin_title patt_font_plugin_title\">品牌导航</div>\r\n				</div>\r\n				<div class=\"plugin_inner_border\">\r\n					<div class=\"plugin_inner_content\" style=\"width: 272px; height: 640px;\">\r\n						<div class=\"image_type8_gap\">\r\n							<ul>\r\n          ");
	DataTable category_listpphot = get_category_child_listpp(15,"pingpai", 0, 0);

	int cdrhot__loop__id=0;
	foreach(DataRow cdrhot in category_listpphot.Rows)
	{
		cdrhot__loop__id++;


	templateBuilder.Append("\r\n        	<li class=\"li1\" style=\"width:255px;height:53px;\">\r\n		    <a target=\"_blank\" href=\"goods_list.aspx?category_id=0&vote_id=" + Utils.ObjectToStr(cdrhot["id"]) + "\"><img class=\"lazy\" title=\"" + Utils.ObjectToStr(cdrhot["title"]) + "\" src=\"" + Utils.ObjectToStr(cdrhot["img_url"]) + "\" style=\"display: inline;\"></a>\r\n			</li>\r\n			");
	}	//end for if

	templateBuilder.Append("\r\n\r\n								\r\n							</ul>\r\n						</div>\r\n</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n		</div>\r\n\r\n		<div class=\"plugin_containers\" style=\"left:-1000px;top:-1000px;width:0px;height:0px;\" layout_id=\"11402913\" plugin_type=\"2\" plugin_data_show_title=\"3\" plugin_data_style=\"0\" plugin_data_type=\"0\" x=\"2\" y=\"13\" cx=\"1\" cy=\"21\">\r\n		<div class=\"plugin_body\" style=\"width:0px;height:0px;\">\r\n			<div class=\"plugin_title_border patt_border_plugin_title\" style=\"width: 0px; height: 0px;\">\r\n				<div class=\"plugin_title_pic bg_a patt_bg_plugin_title\">\r\n					<div class=\"plugin_title patt_font_plugin_title\"></div>\r\n						<ul class=\"plugin_title_searchkey\">\r\n						</ul>\r\n				</div>\r\n				<div class=\"plugin_inner_border\">\r\n					<div class=\"plugin_inner_content\" style=\"width: 272px; height: 490px;\">\r\n					<div class=\"plugin_inner_border\">\r\n					<div class=\"plugin_inner_content\" style=\"width: 272px; height: 490px;\">\r\n		<div class=\"plugin_news_main_content\" id=\"marqueediv2\" style=\"width:272px; height:490px; overflow:hidden;\">\r\n				<div class=\"text_news_style0_content\">\r\n					<ul class=\"text_news_list\">\r\n                      ");
	DataTable indexpl = get_comment_list(0, 28, "is_lock=0");

	foreach(DataRow dr in indexpl.Rows)
	{

	templateBuilder.Append("\r\n						<a target=\"_blank\" class=\"news_title\" title=\"" + Utils.ObjectToStr(dr["content"]) + "\" href=\"");
	templateBuilder.Append(linkurl("goods_show",Utils.ObjectToStr(dr["article_id"])));

	templateBuilder.Append("\">");
	templateBuilder.Append(Utils.DropHTML(Utils.ObjectToStr(dr["content"]),88));

	templateBuilder.Append("【");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(dr["add_time"])).ToString("MM-dd"));

	templateBuilder.Append("】</a><br />\r\n						 ");
	}	//end for if

	templateBuilder.Append("\r\n					</ul>\r\n				</div>\r\n		</div>\r\n<script type=\"text/javascript\">\r\n            new Marquee(\"marqueediv2\", 0, 1, 272, 488, 70, 0, 280)\r\n</");
	templateBuilder.Append("script>\r\n</div>\r\n				</div>\r\n</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n		</div>\r\n		\r\n        <div class=\"plugin_containers\" style=\"left:906px;top:0px;width:294px;height:150px;\" layout_id=\"11402914\" plugin_type=\"1\" plugin_data_show_title=\"0\" plugin_data_style=\"1\" plugin_data_type=\"1\" x=\"2\" y=\"0\" cx=\"1\" cy=\"3\">\r\n		<div class=\"plugin_body\" style=\"width:294px;height:150px;\">\r\n					<div class=\"plugin_untitle_noborder\" style=\"width: 284px; height: 140px;\">\r\n						<div class=\"plugin_inner_content\" style=\"width: 284px; height: 140px;\">\r\n ");
	DataTable topad2 = get_article_list("photo", 0, 1, "status=0 and category_id=94","sort_id asc,add_time desc");

	foreach(DataRow dr in topad2.Rows)
	{

	templateBuilder.Append("\r\n\r\n          ");
	}	//end for if

	templateBuilder.Append("   \r\n</div>\r\n					</div>\r\n		</div>\r\n		</div>\r\n		<div class=\"plugin_containers\" style=\"left:906px;top:0px;width:294px;height:400px;\" layout_id=\"11402915\" plugin_type=\"8\" plugin_data_show_title=\"3\" plugin_data_style=\"0\" plugin_data_type=\"0\" x=\"2\" y=\"3\" cx=\"1\" cy=\"4\">\r\n		<div class=\"plugin_body\" style=\"width:294px;height:350px;\">\r\n			<div class=\"plugin_title_border patt_border_plugin_title\" style=\"width: 282px; height: 188px;\">\r\n				<div class=\"plugin_title_pic bg_a patt_bg_plugin_title\">\r\n					<div class=\"plugin_title patt_font_plugin_title\">网站公告</div>\r\n				</div>\r\n				<div class=\"plugin_inner_border\">\r\n					<div class=\"plugin_inner_content\" style=\"width: 272px; height: 140px;\">\r\n		<div class=\"plugin_news_main_content\" roll=\"False\" direction=\"2\" interval=\"2000\" style=\"height: 125px;\">\r\n				<div class=\"text_news_style0_content\">\r\n					<ul class=\"text_news_list\">\r\n                      ");
	DataTable indexgg = get_article_list("news", 1, 10, "status=0", "add_time desc,id desc");

	foreach(DataRow dr in indexgg.Rows)
	{

	templateBuilder.Append("\r\n						<li><a target=\"_blank\" class=\"news_title\" title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">");
	templateBuilder.Append(Utils.DropHTML(Utils.ObjectToStr(dr["title"]),38));

	templateBuilder.Append("</a><div class=\"icon_h\"></div></li>\r\n						 ");
	}	//end for if

	templateBuilder.Append("\r\n					</ul>\r\n				</div>\r\n		</div>\r\n</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n		</div>\r\n\r\n		<div class=\"plugin_containers\" style=\"left:-1000px;top:-1000px;width:0px;height:0px;\" layout_id=\"11402916\" plugin_type=\"1\" plugin_data_show_title=\"1\" plugin_data_style=\"1\" plugin_data_type=\"1\" x=\"0\" y=\"34\" cx=\"3\" cy=\"2\">\r\n		<div class=\"plugin_body\" style=\"width:0px;height:0px;\">\r\n					<div class=\"plugin_untitle_border patt_border_plugin_untitle\" style=\"width: 0px; height: 0px;\">\r\n						<div class=\"plugin_inner_content\" style=\"width: 0px; height: 0px;\">\r\n\r\n           ");
	DataTable topad3 = get_article_list("photo", 0, 1, "status=0 and category_id=95","sort_id asc,add_time desc");

	foreach(DataRow dr in topad3.Rows)
	{

	templateBuilder.Append("\r\n                <a href=\"" + Utils.ObjectToStr(dr["link_url"]) + "\" target=\"_blank\"><img class=\"lazy adv_image\" index=\"1\" src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" data-original=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" style=\"width: 1178px; height: 78px; display: inline;\"></a>\r\n          ");
	}	//end for if

	templateBuilder.Append("  \r\n\r\n</div>\r\n					</div>\r\n		</div>\r\n		</div>\r\n\r\n		<div class=\"plugin_containers\" style=\"left:0px;top:1200px;width:600px;height:550px;\" layout_id=\"11402917\" plugin_type=\"2\" plugin_data_show_title=\"3\" plugin_data_style=\"0\" plugin_data_type=\"0\" x=\"1\" y=\"36\" cx=\"1\" cy=\"11\">\r\n		<div class=\"plugin_body\" style=\"width:600px;height:550px;\">\r\n			<div class=\"plugin_title_border patt_border_plugin_title\" style=\"width: 590px; height: 538px;\">\r\n				<div class=\"plugin_title_pic bg_a patt_bg_plugin_title\">\r\n					<div class=\"plugin_title patt_font_plugin_title\">井控系列</div>\r\n						<ul class=\"plugin_title_searchkey\">\r\n						</ul>\r\n				</div>\r\n				<div class=\"plugin_inner_border\">\r\n					<div class=\"plugin_inner_content\" style=\"width: 600px; height: 490px;\">\r\n		<div class=\"showcase_main_content\" goods_style=\"0\" roll=\"False\" direction=\"2\" interval=\"2000\">\r\n			<ul class=\"showcase_type0_goods\">	\r\n            \r\n      ");
	DataTable goodsf3 = get_article_list("goods", 15, 6, "1=1","add_time desc");

	foreach(DataRow dr in goodsf3.Rows)
	{

	templateBuilder.Append("\r\n        <li class=\"goods_list\" label_id=\"0\" goods_id=\"" + Utils.ObjectToStr(dr["id"]) + "\" RuleId=\"" + Utils.ObjectToStr(dr["id"]) + "\" RuleType=\"\" RuleStartTime=null RuleEndTime=null Price=\"" + Utils.ObjectToStr(dr["sell_price"]) + "\" DiscountPrice=\"\" style=\"padding: 12px 3px 8px;\">\r\n				<div class=\"showcase_goods_style0\">\r\n					<div class=\"showcase_goods_style0_img\">\r\n						<a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\"><img class=\"lazy\" src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(dr["title"]) + "\"  data-original=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" style=\"width: 166px; height: 166px; margin-left: 0px; margin-top: 0px; display: inline;\"></a>\r\n						<div id=\"Div12\"><div class=\"sales_reduce\"></div></div>\r\n					</div>\r\n					<div class=\"showcase_goods_style0_intro\"><p class=\"nav_p_hover\"><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\" title=\"" + Utils.ObjectToStr(dr["title"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "</a></p></div>\r\n					<p class=\"showcase_goods_style0_rmb\">\r\n						<strong>现价：¥ <em id=\"Em23\">" + Utils.ObjectToStr(dr["sell_price"]) + "</em></strong>\r\n					</p>\r\n				</div>\r\n	</li>\r\n\r\n      ");
	}	//end for if

    templateBuilder.Append("  \r\n\r\n</div>\r\n					</div>\r\n		</div>\r\n		</div>\r\n\r\n		<div class=\"plugin_containers\" style=\"left:600px;top:0px;width:400px;height:550px;\" layout_id=\"11402917\" plugin_type=\"2\" plugin_data_show_title=\"3\" plugin_data_style=\"0\" plugin_data_type=\"0\" x=\"1\" y=\"36\" cx=\"1\" cy=\"11\">\r\n		<div class=\"plugin_body\" style=\"width:400px;height:550px;\">\r\n			<div class=\"plugin_title_border patt_border_plugin_title\" style=\"width: 398px; height: 538px;\">\r\n				<div class=\"plugin_title_pic bg_a patt_bg_plugin_title\">\r\n					<div class=\"plugin_title patt_font_plugin_title\">井口装置</div>\r\n						<ul class=\"plugin_title_searchkey\">\r\n						</ul>\r\n				</div>\r\n				<div class=\"plugin_inner_border\">\r\n					<div class=\"plugin_inner_content\" style=\"width: 400px; height: 490px;\">\r\n		<div class=\"showcase_main_content\" goods_style=\"0\" roll=\"False\" direction=\"2\" interval=\"2000\">\r\n			<ul class=\"showcase_type0_goods\">	\r\n            \r\n      ");
    DataTable goodsf33 = get_article_list("goods", 19, 6, "1=1", "add_time desc");

    foreach (DataRow dr in goodsf33.Rows)
    {

        templateBuilder.Append("\r\n        <li class=\"goods_list\" label_id=\"0\" goods_id=\"" + Utils.ObjectToStr(dr["id"]) + "\" RuleId=\"" + Utils.ObjectToStr(dr["id"]) + "\" RuleType=\"\" RuleStartTime=null RuleEndTime=null Price=\"" + Utils.ObjectToStr(dr["sell_price"]) + "\" DiscountPrice=\"\" style=\"padding: 12px 3px 8px;\">\r\n				<div class=\"showcase_goods_style0\">\r\n					<div class=\"showcase_goods_style0_img\">\r\n						<a target=\"_blank\" href=\"");
        templateBuilder.Append(linkurl("goods_show", Utils.ObjectToStr(dr["id"])));

        templateBuilder.Append("\"><img class=\"lazy\" src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(dr["title"]) + "\"  data-original=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" style=\"width: 166px; height: 166px; margin-left: 0px; margin-top: 0px; display: inline;\"></a>\r\n						<div id=\"Div12\"><div class=\"sales_reduce\"></div></div>\r\n					</div>\r\n					<div class=\"showcase_goods_style0_intro\"><p class=\"nav_p_hover\"><a target=\"_blank\" href=\"");
        templateBuilder.Append(linkurl("goods_show", Utils.ObjectToStr(dr["id"])));

        templateBuilder.Append("\" title=\"" + Utils.ObjectToStr(dr["title"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "</a></p></div>\r\n					<p class=\"showcase_goods_style0_rmb\">\r\n						<strong>现价：¥ <em id=\"Em23\">" + Utils.ObjectToStr(dr["sell_price"]) + "</em></strong>\r\n					</p>\r\n				</div>\r\n	</li>\r\n\r\n      ");
    }	//end for if

	templateBuilder.Append("\r\n</ul>\r\n		</div>\r\n</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n		</div>\r\n		<div class=\"plugin_containers\" style=\"left:-1000px;top:-1000px;width:0px;height:0px;\" layout_id=\"11402918\" plugin_type=\"1\" plugin_data_show_title=\"1\" plugin_data_style=\"1\" plugin_data_type=\"7\" x=\"2\" y=\"36\" cx=\"1\" cy=\"11\">\r\n		<div class=\"plugin_body\" style=\"width:0px;height:0px;\">\r\n					<div class=\"plugin_untitle_border patt_border_plugin_untitle\" style=\"width: 0px; height: 0px;\">\r\n						<div class=\"plugin_inner_content\" style=\"width: 0px; height: 0px;\">\r\n						<div class=\"image_type7_gap\">\r\n							<div class=\"image_type7_bigimg li1\" style=\"width:0px;height:0px;\">\r\n           ");
	DataTable topad4 = get_article_list("photo", 0, 1, "status=0 and category_id=96","sort_id asc,add_time desc");

	foreach(DataRow dr in topad4.Rows)
	{

	templateBuilder.Append("\r\n                <a href=\"" + Utils.ObjectToStr(dr["link_url"]) + "\" target=\"_blank\"><img class=\"lazy \" src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" data-original=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" style=\"width: 270px; height: 337px; display: inline;\"></a>\r\n          ");
	}	//end for if

	templateBuilder.Append("  \r\n							</div>\r\n							<ul class=\"image_type7_smallimg\">\r\n	    ");
	DataTable category_listpp1 = get_category_child_listpp(4,"pingpai", 0, 60);

	int cdrpp1__loop__id=0;
	foreach(DataRow cdrpp1 in category_listpp1.Rows)
	{
		cdrpp1__loop__id++;


	templateBuilder.Append("\r\n        	<li class=\"li1\" style=\"width:131px;height:53px;\">\r\n		    <a target=\"_blank\" href=\"goods_list.aspx?category_id=60&vote_id=" + Utils.ObjectToStr(cdrpp1["id"]) + "\"><img class=\"lazy\" title=\"" + Utils.ObjectToStr(cdrpp1["title"]) + "\" src=\"" + Utils.ObjectToStr(cdrpp1["img_url"]) + "\" style=\"display: inline;\"></a>\r\n			</li>\r\n			");
	}	//end for if

	DataTable category_listpp2 = get_category_child_listpp(4,"pingpai", 0, 19);

	int cdrpp2__loop__id=0;
	foreach(DataRow cdrpp2 in category_listpp2.Rows)
	{
		cdrpp2__loop__id++;


	templateBuilder.Append("\r\n        	<li class=\"li1\" style=\"width:131px;height:53px;\">\r\n		    <a target=\"_blank\" href=\"goods_list.aspx?category_id=19&vote_id=" + Utils.ObjectToStr(cdrpp2["id"]) + "\"><img class=\"lazy\" title=\"" + Utils.ObjectToStr(cdrpp2["title"]) + "\" src=\"" + Utils.ObjectToStr(cdrpp2["img_url"]) + "\" style=\"display: inline;\"></a>\r\n			</li>\r\n			");
	}	//end for if

	templateBuilder.Append("\r\n							</ul>\r\n						</div>\r\n</div>\r\n					</div>\r\n		</div>\r\n		</div>\r\n	\r\n    	<div class=\"plugin_containers\" style=\"left:-1000px;top:-1000px;width:0px;height:0px;\" layout_id=\"11402910\" plugin_type=\"4\" plugin_data_show_title=\"3\" plugin_data_style=\"2\" plugin_data_type=\"0\" x=\"0\" y=\"23\" cx=\"1\" cy=\"11\">\r\n		<div class=\"plugin_body\" style=\"width:0px;height:0px;\">\r\n			<div class=\"plugin_title_border patt_border_plugin_title\" style=\"width: 0px; height: 0px;\">\r\n				<div class=\"plugin_title_pic bg_a patt_bg_plugin_title\">\r\n					<div class=\"plugin_title patt_font_plugin_title\"></div>\r\n				</div>\r\n				<div class=\"plugin_inner_border\">\r\n					<div class=\"plugin_inner_content\" style=\"width: 0px; height: 0px;\">\r\n		<div class=\"showcase_main_content\" goods_style=\"0\" roll=\"False\" direction=\"2\" interval=\"2000\">\r\n			<ul class=\"showcase_type2_goods\">\r\n            \r\n          ");
	DataTable goodsf12 = get_article_list("goods", 60, 3, "is_top=1","add_time desc");

	foreach(DataRow dr in goodsf12.Rows)
	{

	templateBuilder.Append("\r\n\r\n    	<li class=\"goods_list\" label_id=\"0\" goods_id=\"8683\" ruleid=\"6275\" ruletype=\"1\" rulestarttime=\"\\/Date(1379779200000)\\/\" ruleendtime=\"\\/Date(1444233600000)\\/\" price=\"232200\" discountprice=\"10000\" style=\"width: 174px;\">\r\n			<div class=\"showcase_goods_style2\">\r\n				<div class=\"showcase_goods_style2_img plugin_touch_cancel\">\r\n					<a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\"><img class=\"lazy\"src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(dr["title"]) + "\"  data-original=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" style=\"display: inline;\"></a>\r\n				</div>\r\n				<div class=\"a_text\" style=\"width: 79px;\">\r\n					<div class=\"a_text_dt\"><p class=\"nav_p_hover\"><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\" title=\"" + Utils.ObjectToStr(dr["title"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "</a></p></div>\r\n					<div class=\"a_text_dd\"><strong>¥ <em id=\"Em3\">" + Utils.ObjectToStr(dr["sell_price"]) + "</em></strong></div>\r\n				</div>\r\n			</div>\r\n	</li>\r\n      ");
	}	//end for if

	DataTable goodsf22 = get_article_list("goods", 19, 2, "is_top=1","add_time desc");

	foreach(DataRow dr in goodsf22.Rows)
	{

	templateBuilder.Append("\r\n\r\n    	<li class=\"goods_list\" label_id=\"0\" goods_id=\"8683\" ruleid=\"6275\" ruletype=\"1\" rulestarttime=\"\\/Date(1379779200000)\\/\" ruleendtime=\"\\/Date(1444233600000)\\/\" price=\"232200\" discountprice=\"10000\" style=\"width: 174px;\">\r\n			<div class=\"showcase_goods_style2\">\r\n				<div class=\"showcase_goods_style2_img plugin_touch_cancel\">\r\n					<a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\"><img class=\"lazy\"src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(dr["title"]) + "\"  data-original=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" style=\"display: inline;\"></a>\r\n				</div>\r\n				<div class=\"a_text\" style=\"width: 79px;\">\r\n					<div class=\"a_text_dt\"><p class=\"nav_p_hover\"><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\" title=\"" + Utils.ObjectToStr(dr["title"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "</a></p></div>\r\n					<div class=\"a_text_dd\"><strong>¥ <em id=\"Em6\">" + Utils.ObjectToStr(dr["sell_price"]) + "</em></strong></div>\r\n				</div>\r\n			</div>\r\n	</li>\r\n      ");
	}	//end for if

	templateBuilder.Append("\r\n</ul>\r\n		</div>\r\n</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n		</div>\r\n\r\n\r\n        <div class=\"plugin_containers\" style=\"left:0px;top:550px;width:600px;height:550px;\" layout_id=\"11402917\" plugin_type=\"2\" plugin_data_show_title=\"3\" plugin_data_style=\"0\" plugin_data_type=\"0\" x=\"1\" y=\"36\" cx=\"1\" cy=\"11\">\r\n		<div class=\"plugin_body\" style=\"width:600px;height:550px;\">\r\n			<div class=\"plugin_title_border patt_border_plugin_title\" style=\"width: 588px; height: 538px;\">\r\n				<div class=\"plugin_title_pic bg_a patt_bg_plugin_title\">\r\n					<div class=\"plugin_title patt_font_plugin_title\">底座系列</div>\r\n						<ul class=\"plugin_title_searchkey\">\r\n						</ul>\r\n				</div>\r\n				<div class=\"plugin_inner_border\">\r\n					<div class=\"plugin_inner_content\" style=\"width: 578px; height: 490px;\">\r\n		<div class=\"showcase_main_content\" goods_style=\"0\" roll=\"False\" direction=\"2\" interval=\"2000\">\r\n			<ul class=\"showcase_type0_goods\">	\r\n            \r\n      ");
	DataTable goodsf5 = get_article_list("goods", 43, 6, "1=1","add_time desc");

	foreach(DataRow dr in goodsf5.Rows)
	{

	templateBuilder.Append("\r\n        <li class=\"goods_list\" label_id=\"0\" goods_id=\"" + Utils.ObjectToStr(dr["id"]) + "\" RuleId=\"" + Utils.ObjectToStr(dr["id"]) + "\" RuleType=\"\" RuleStartTime=null RuleEndTime=null Price=\"" + Utils.ObjectToStr(dr["sell_price"]) + "\" DiscountPrice=\"\" style=\"padding: 12px 3px 8px;\">\r\n				<div class=\"showcase_goods_style0\">\r\n					<div class=\"showcase_goods_style0_img\">\r\n						<a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\"><img class=\"lazy\" src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(dr["title"]) + "\"  data-original=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" style=\"width: 166px; height: 166px; margin-left: 0px; margin-top: 0px; display: inline;\"></a>\r\n						<div id=\"Div3\"><div class=\"sales_reduce\"></div></div>\r\n					</div>\r\n					<div class=\"showcase_goods_style0_intro\"><p class=\"nav_p_hover\"><a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\" title=\"" + Utils.ObjectToStr(dr["title"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "</a></p></div>\r\n					<p class=\"showcase_goods_style0_rmb\">\r\n						<strong>现价：¥ <em id=\"Em8\">" + Utils.ObjectToStr(dr["sell_price"]) + "</em></strong>\r\n					</p>\r\n				</div>\r\n	</li>\r\n\r\n      ");
	}	//end for if

    templateBuilder.Append("\r\n</ul>\r\n		</div>\r\n</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n		</div>\r\n\r\n\r\n        <div class=\"plugin_containers\" style=\"left:600px;top:550px;width:400px;height:550px;\" layout_id=\"11402917\" plugin_type=\"2\" plugin_data_show_title=\"3\" plugin_data_style=\"0\" plugin_data_type=\"0\" x=\"1\" y=\"36\" cx=\"1\" cy=\"11\">\r\n		<div class=\"plugin_body\" style=\"width:400px;height:550px;\">\r\n			<div class=\"plugin_title_border patt_border_plugin_title\" style=\"width: 388px; height: 538px;\">\r\n				<div class=\"plugin_title_pic bg_a patt_bg_plugin_title\">\r\n					<div class=\"plugin_title patt_font_plugin_title\">抽油机系列</div>\r\n						<ul class=\"plugin_title_searchkey\">\r\n						</ul>\r\n				</div>\r\n				<div class=\"plugin_inner_border\">\r\n					<div class=\"plugin_inner_content\" style=\"width: 378px; height: 490px;\">\r\n		<div class=\"showcase_main_content\" goods_style=\"0\" roll=\"False\" direction=\"2\" interval=\"2000\">\r\n			<ul class=\"showcase_type0_goods\">	\r\n            \r\n      ");
    DataTable goodsf35 = get_article_list("goods", 52, 6, "1=1", "add_time desc");

    foreach (DataRow dr in goodsf35.Rows)
    {

        templateBuilder.Append("\r\n        <li class=\"goods_list\" label_id=\"0\" goods_id=\"" + Utils.ObjectToStr(dr["id"]) + "\" RuleId=\"" + Utils.ObjectToStr(dr["id"]) + "\" RuleType=\"\" RuleStartTime=null RuleEndTime=null Price=\"" + Utils.ObjectToStr(dr["sell_price"]) + "\" DiscountPrice=\"\" style=\"padding: 12px 3px 8px;\">\r\n				<div class=\"showcase_goods_style0\">\r\n					<div class=\"showcase_goods_style0_img\">\r\n						<a target=\"_blank\" href=\"");
        templateBuilder.Append(linkurl("goods_show", Utils.ObjectToStr(dr["id"])));

        templateBuilder.Append("\"><img class=\"lazy\" src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(dr["title"]) + "\"  data-original=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" style=\"width: 166px; height: 166px; margin-left: 0px; margin-top: 0px; display: inline;\"></a>\r\n						<div id=\"Div3\"><div class=\"sales_reduce\"></div></div>\r\n					</div>\r\n					<div class=\"showcase_goods_style0_intro\"><p class=\"nav_p_hover\"><a target=\"_blank\" href=\"");
        templateBuilder.Append(linkurl("goods_show", Utils.ObjectToStr(dr["id"])));

        templateBuilder.Append("\" title=\"" + Utils.ObjectToStr(dr["title"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "</a></p></div>\r\n					<p class=\"showcase_goods_style0_rmb\">\r\n						<strong>现价：¥ <em id=\"Em8\">" + Utils.ObjectToStr(dr["sell_price"]) + "</em></strong>\r\n					</p>\r\n				</div>\r\n	</li>\r\n\r\n      ");
    }	//end for if

    templateBuilder.Append("\r\n</ul>\r\n		</div>\r\n</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n		</div>\r\n\r\n\r\n        <div class=\"plugin_containers\" style=\"left:0px;top:1100px;width:600px;height:550px;\" layout_id=\"11402917\" plugin_type=\"2\" plugin_data_show_title=\"3\" plugin_data_style=\"0\" plugin_data_type=\"0\" x=\"1\" y=\"36\" cx=\"1\" cy=\"11\">\r\n		<div class=\"plugin_body\" style=\"width:600px;height:550px;\">\r\n			<div class=\"plugin_title_border patt_border_plugin_title\" style=\"width: 588px; height: 538px;\">\r\n				<div class=\"plugin_title_pic bg_a patt_bg_plugin_title\">\r\n					<div class=\"plugin_title patt_font_plugin_title\">顶驱系列</div>\r\n						<ul class=\"plugin_title_searchkey\">\r\n						</ul>\r\n				</div>\r\n				<div class=\"plugin_inner_border\">\r\n					<div class=\"plugin_inner_content\" style=\"width: 578px; height: 490px;\">\r\n		<div class=\"showcase_main_content\" goods_style=\"0\" roll=\"False\" direction=\"2\" interval=\"2000\">\r\n			<ul class=\"showcase_type0_goods\">	\r\n            \r\n      ");
    DataTable goodsf36 = get_article_list("goods", 60, 6, "1=1", "add_time desc");

    foreach (DataRow dr in goodsf36.Rows)
    {

        templateBuilder.Append("\r\n        <li class=\"goods_list\" label_id=\"0\" goods_id=\"" + Utils.ObjectToStr(dr["id"]) + "\" RuleId=\"" + Utils.ObjectToStr(dr["id"]) + "\" RuleType=\"\" RuleStartTime=null RuleEndTime=null Price=\"" + Utils.ObjectToStr(dr["sell_price"]) + "\" DiscountPrice=\"\" style=\"padding: 12px 3px 8px;\">\r\n				<div class=\"showcase_goods_style0\">\r\n					<div class=\"showcase_goods_style0_img\">\r\n						<a target=\"_blank\" href=\"");
        templateBuilder.Append(linkurl("goods_show", Utils.ObjectToStr(dr["id"])));

        templateBuilder.Append("\"><img class=\"lazy\" src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(dr["title"]) + "\"  data-original=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" style=\"width: 166px; height: 166px; margin-left: 0px; margin-top: 0px; display: inline;\"></a>\r\n						<div id=\"Div3\"><div class=\"sales_reduce\"></div></div>\r\n					</div>\r\n					<div class=\"showcase_goods_style0_intro\"><p class=\"nav_p_hover\"><a target=\"_blank\" href=\"");
        templateBuilder.Append(linkurl("goods_show", Utils.ObjectToStr(dr["id"])));

        templateBuilder.Append("\" title=\"" + Utils.ObjectToStr(dr["title"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "</a></p></div>\r\n					<p class=\"showcase_goods_style0_rmb\">\r\n						<strong>现价：¥ <em id=\"Em8\">" + Utils.ObjectToStr(dr["sell_price"]) + "</em></strong>\r\n					</p>\r\n				</div>\r\n	</li>\r\n\r\n      ");
    }	//end for if

    templateBuilder.Append("\r\n</ul>\r\n		</div>\r\n</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n		</div>\r\n\r\n\r\n        <div class=\"plugin_containers\" style=\"left:600px;top:1100px;width:400px;height:550px;\" layout_id=\"11402917\" plugin_type=\"2\" plugin_data_show_title=\"3\" plugin_data_style=\"0\" plugin_data_type=\"0\" x=\"1\" y=\"36\" cx=\"1\" cy=\"11\">\r\n		<div class=\"plugin_body\" style=\"width:400px;height:550px;\">\r\n			<div class=\"plugin_title_border patt_border_plugin_title\" style=\"width: 388px; height: 538px;\">\r\n				<div class=\"plugin_title_pic bg_a patt_bg_plugin_title\">\r\n					<div class=\"plugin_title patt_font_plugin_title\">特车系列</div>\r\n						<ul class=\"plugin_title_searchkey\">\r\n						</ul>\r\n				</div>\r\n				<div class=\"plugin_inner_border\">\r\n					<div class=\"plugin_inner_content\" style=\"width: 378px; height: 490px;\">\r\n		<div class=\"showcase_main_content\" goods_style=\"0\" roll=\"False\" direction=\"2\" interval=\"2000\">\r\n			<ul class=\"showcase_type0_goods\">	\r\n            \r\n      ");
    DataTable goodsf37 = get_article_list("goods", 65, 6, "1=1", "add_time desc");

    foreach (DataRow dr in goodsf37.Rows)
    {

        templateBuilder.Append("\r\n        <li class=\"goods_list\" label_id=\"0\" goods_id=\"" + Utils.ObjectToStr(dr["id"]) + "\" RuleId=\"" + Utils.ObjectToStr(dr["id"]) + "\" RuleType=\"\" RuleStartTime=null RuleEndTime=null Price=\"" + Utils.ObjectToStr(dr["sell_price"]) + "\" DiscountPrice=\"\" style=\"padding: 12px 3px 8px;\">\r\n				<div class=\"showcase_goods_style0\">\r\n					<div class=\"showcase_goods_style0_img\">\r\n						<a target=\"_blank\" href=\"");
        templateBuilder.Append(linkurl("goods_show", Utils.ObjectToStr(dr["id"])));

        templateBuilder.Append("\"><img class=\"lazy\" src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(dr["title"]) + "\"  data-original=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" style=\"width: 166px; height: 166px; margin-left: 0px; margin-top: 0px; display: inline;\"></a>\r\n						<div id=\"Div3\"><div class=\"sales_reduce\"></div></div>\r\n					</div>\r\n					<div class=\"showcase_goods_style0_intro\"><p class=\"nav_p_hover\"><a target=\"_blank\" href=\"");
        templateBuilder.Append(linkurl("goods_show", Utils.ObjectToStr(dr["id"])));

        templateBuilder.Append("\" title=\"" + Utils.ObjectToStr(dr["title"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "</a></p></div>\r\n					<p class=\"showcase_goods_style0_rmb\">\r\n						<strong>现价：¥ <em id=\"Em8\">" + Utils.ObjectToStr(dr["sell_price"]) + "</em></strong>\r\n					</p>\r\n				</div>\r\n	</li>\r\n\r\n      ");
    }	//end for if

    templateBuilder.Append("\r\n</ul>\r\n		</div>\r\n</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n		</div>\r\n\r\n\r\n        <div class=\"plugin_containers\" style=\"left:0px;top:1650px;width:600px;height:550px;\" layout_id=\"11402917\" plugin_type=\"2\" plugin_data_show_title=\"3\" plugin_data_style=\"0\" plugin_data_type=\"0\" x=\"1\" y=\"36\" cx=\"1\" cy=\"11\">\r\n		<div class=\"plugin_body\" style=\"width:600px;height:550px;\">\r\n			<div class=\"plugin_title_border patt_border_plugin_title\" style=\"width: 588px; height: 538px;\">\r\n				<div class=\"plugin_title_pic bg_a patt_bg_plugin_title\">\r\n					<div class=\"plugin_title patt_font_plugin_title\">钢丝绳系列</div>\r\n						<ul class=\"plugin_title_searchkey\">\r\n						</ul>\r\n				</div>\r\n				<div class=\"plugin_inner_border\">\r\n					<div class=\"plugin_inner_content\" style=\"width: 578px; height: 490px;\">\r\n		<div class=\"showcase_main_content\" goods_style=\"0\" roll=\"False\" direction=\"2\" interval=\"2000\">\r\n			<ul class=\"showcase_type0_goods\">	\r\n            \r\n      ");
    DataTable goodsf38 = get_article_list("goods", 168, 6, "1=1", "add_time desc");

    foreach (DataRow dr in goodsf38.Rows)
    {

        templateBuilder.Append("\r\n        <li class=\"goods_list\" label_id=\"0\" goods_id=\"" + Utils.ObjectToStr(dr["id"]) + "\" RuleId=\"" + Utils.ObjectToStr(dr["id"]) + "\" RuleType=\"\" RuleStartTime=null RuleEndTime=null Price=\"" + Utils.ObjectToStr(dr["sell_price"]) + "\" DiscountPrice=\"\" style=\"padding: 12px 3px 8px;\">\r\n				<div class=\"showcase_goods_style0\">\r\n					<div class=\"showcase_goods_style0_img\">\r\n						<a target=\"_blank\" href=\"");
        templateBuilder.Append(linkurl("goods_show", Utils.ObjectToStr(dr["id"])));

        templateBuilder.Append("\"><img class=\"lazy\" src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(dr["title"]) + "\"  data-original=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" style=\"width: 166px; height: 166px; margin-left: 0px; margin-top: 0px; display: inline;\"></a>\r\n						<div id=\"Div3\"><div class=\"sales_reduce\"></div></div>\r\n					</div>\r\n					<div class=\"showcase_goods_style0_intro\"><p class=\"nav_p_hover\"><a target=\"_blank\" href=\"");
        templateBuilder.Append(linkurl("goods_show", Utils.ObjectToStr(dr["id"])));

        templateBuilder.Append("\" title=\"" + Utils.ObjectToStr(dr["title"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "</a></p></div>\r\n					<p class=\"showcase_goods_style0_rmb\">\r\n						<strong>现价：¥ <em id=\"Em8\">" + Utils.ObjectToStr(dr["sell_price"]) + "</em></strong>\r\n					</p>\r\n				</div>\r\n	</li>\r\n\r\n      ");
    }	//end for if

    templateBuilder.Append("\r\n</ul>\r\n		</div>\r\n</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n		</div>\r\n\r\n\r\n        <div class=\"plugin_containers\" style=\"left:600px;top:1650px;width:400px;height:550px;\" layout_id=\"11402917\" plugin_type=\"2\" plugin_data_show_title=\"3\" plugin_data_style=\"0\" plugin_data_type=\"0\" x=\"1\" y=\"36\" cx=\"1\" cy=\"11\">\r\n		<div class=\"plugin_body\" style=\"width:400px;height:550px;\">\r\n			<div class=\"plugin_title_border patt_border_plugin_title\" style=\"width: 388px; height: 538px;\">\r\n				<div class=\"plugin_title_pic bg_a patt_bg_plugin_title\">\r\n					<div class=\"plugin_title patt_font_plugin_title\">螺纹量规系列</div>\r\n						<ul class=\"plugin_title_searchkey\">\r\n						</ul>\r\n				</div>\r\n				<div class=\"plugin_inner_border\">\r\n					<div class=\"plugin_inner_content\" style=\"width: 378px; height: 490px;\">\r\n		<div class=\"showcase_main_content\" goods_style=\"0\" roll=\"False\" direction=\"2\" interval=\"2000\">\r\n			<ul class=\"showcase_type0_goods\">	\r\n            \r\n      ");
    DataTable goodsf39 = get_article_list("goods", 169, 6, "1=1", "add_time desc");

    foreach (DataRow dr in goodsf39.Rows)
    {

        templateBuilder.Append("\r\n        <li class=\"goods_list\" label_id=\"0\" goods_id=\"" + Utils.ObjectToStr(dr["id"]) + "\" RuleId=\"" + Utils.ObjectToStr(dr["id"]) + "\" RuleType=\"\" RuleStartTime=null RuleEndTime=null Price=\"" + Utils.ObjectToStr(dr["sell_price"]) + "\" DiscountPrice=\"\" style=\"padding: 12px 3px 8px;\">\r\n				<div class=\"showcase_goods_style0\">\r\n					<div class=\"showcase_goods_style0_img\">\r\n						<a target=\"_blank\" href=\"");
        templateBuilder.Append(linkurl("goods_show", Utils.ObjectToStr(dr["id"])));

        templateBuilder.Append("\"><img class=\"lazy\" src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(dr["title"]) + "\"  data-original=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" style=\"width: 166px; height: 166px; margin-left: 0px; margin-top: 0px; display: inline;\"></a>\r\n						<div id=\"Div3\"><div class=\"sales_reduce\"></div></div>\r\n					</div>\r\n					<div class=\"showcase_goods_style0_intro\"><p class=\"nav_p_hover\"><a target=\"_blank\" href=\"");
        templateBuilder.Append(linkurl("goods_show", Utils.ObjectToStr(dr["id"])));

        templateBuilder.Append("\" title=\"" + Utils.ObjectToStr(dr["title"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "</a></p></div>\r\n					<p class=\"showcase_goods_style0_rmb\">\r\n						<strong>现价：¥ <em id=\"Em8\">" + Utils.ObjectToStr(dr["sell_price"]) + "</em></strong>\r\n					</p>\r\n				</div>\r\n	</li>\r\n\r\n      ");
    }	//end for if

    templateBuilder.Append("\r\n</ul>\r\n		</div>\r\n</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n		</div>\r\n\r\n</div>\r\n		</div>\r\n	</div>\r\n\r\n<!--滑动门js-s-->\r\n<script src=\"");
	templateBuilder.Append("/templates/green");
	templateBuilder.Append("/images/istore_static_display.min.js\" type=\"text/javascript\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\">\r\n    var plugin_save_level = 0;\r\n   var istore_display = null;\r\n	    //$(document).ready(function () {\r\n	    // Page的ID设置\r\n	    istore_option.page_id = 2406251;\r\n	    istore_option.store_info = {\r\n	        multiuser_support: \"False\" == \"True\",\r\n	        seller_sub_id: 0\r\n	    };\r\n	    // 启动页面布局\r\n	    var istore_static = null;\r\n	    istore_static = new iStoreStatic(istore_option, plugin_option, \"#display_containers\");\r\n	    istore_static.show_store_display();\r\n	    //	});\r\n	</");
	templateBuilder.Append("script>\r\n<!--滑动门js-end-->\r\n\r\n    <!--Footer-->\r\n");



    templateBuilder.Append("\r\n\r\n			</ul>\r\n	</div>\r\n	<div style=\"left:0x;top:1000px;width:1200px;height:200px;\"class=\"footer_copyright\" id=\"store_footer\">\r\n		<div id=\"footer_content\">\r\n        <div style=\"text-align:center;\">\r\n        <div class=\"links\" style=\"margin:0px;padding:0px;color:#666666;font-family:Arial, Verdana, 宋体;text-align:center;white-space:normal;background-color:#FFFFFF;\">\r\n        <br />\r\n        <p align=\"center\" style=\"orphans:2;white-space:normal;widows:2;background-color:#FFFFFF;margin-top:0px;margin-bottom:0px;color:#666666;font-family:&#39;Microsoft YaHei&#39;, SimSun, Arial;padding:0px;\"><span style=\"outline:none;text-decoration:none;color:#666666;margin:0px;padding:0px;font-family:&#39;Microsoft YaHei&#39;;line-height:2;font-size:12px;\">ICP备案号： Copyright © 2015&nbsp;</span><span style=\"margin:0px;padding:0px;font-family:&#39;Microsoft YaHei&#39;;line-height:2;\"><span style=\"color:#666666;font-size:12px;\">All Rights Reserved </span>\r\n <span style=\"color:#666666;font-size:12px;\">&nbsp;</span></span><span style=\"margin:0px;padding:0px;font-family:&#39;Microsoft YaHei&#39;;line-height:2;color:#666666;font-size:12px;\">A&W Trading FZE 版权所有,违者必究</span> </p>\r\n");
    
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

    templateBuilder.Append("<div style=\"left:0x;top:2500px;width:1200px;height:200px;\"class=\"footer_copyright\" id=\"store_footer\"><p align=\"center\" style=\"orphans:2;white-space:normal;widows:2;background-color:#FFFFFF;margin-top:0px;margin-bottom:0px;color:#666666;font-family:&#39;Microsoft YaHei&#39;, SimSun, Arial;padding:0px;\"><img src=\"");
	templateBuilder.Append("/templates/green");
	templateBuilder.Append("/images/wKgJNFIjQWqAJKM9AAAIu06yUwg699.png\" style=\"border-style:none;vertical-align:middle;margin:0px;padding:0px;\"><span style=\"color:#666666;font-size:12px;\">&nbsp;</span><img title=\"网站备案\" src=\"");
	templateBuilder.Append("/templates/green");
	templateBuilder.Append("/images/wKgJNFIhXSiAHPFHAAAGom5QmAk433.png\" height=\"50\" width=\"110\" style=\"border-style:none;vertical-align:middle;margin:0px;padding:0px;\"><span style=\"color:#666666;font-size:12px;\">&nbsp;&nbsp;</span><img src=\"");
	templateBuilder.Append("/templates/green");
	templateBuilder.Append("/images/wKgJNFIy2qyAEa3yAAAMqg2PFik097.jpg\" style=\"border-style:none;vertical-align:middle;margin:0px;padding:0px;\"><span style=\"color:#666666;font-size:12px;\">&nbsp;</span><img title=\"网银\" src=\"");
	templateBuilder.Append("/templates/green");
	templateBuilder.Append("/images/wKgJNFIhXS-AVNvhAAAJ3K_rPvM818.png\" height=\"50\" width=\"140\" style=\"border-style:none;vertical-align:middle;margin:0px;padding:0px;\"><span style=\"color:#666666;font-size:12px;\">&nbsp;&nbsp;</span><span style=\"color:#666666;font-size:12px;\">&nbsp;</span></p><p align=\"center\" style=\"orphans:2;white-space:normal;widows:2;background-color:#FFFFFF;margin-top:0px;margin-bottom:0px;color:#666666;font-family:&#39;Microsoft YaHei&#39;, SimSun, Arial;padding:0px;\"><span style=\"margin:0px;padding:0px;font-family:&#39;Microsoft YaHei&#39;;line-height:2;color:#666666;font-size:12px;\">技术支持：&nbsp;</span><span style=\"outline:none;margin:0px;padding:0px;font-family:&#39;Microsoft YaHei&#39;;line-height:2;\"><span style=\"outline:none;text-decoration:none;color:#666666;margin:0px;padding:0px;font-size:12px;\"></span></span> </p></div></div></div>\r\n	</div>\r\n</div>\r\n</div></div>  \r\n\r\n<script src=\"");
    
	templateBuilder.Append("/templates/green");
	templateBuilder.Append("/images/header.js\" type=\"text/javascript\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\">\r\n    show_store_nav();\r\n</");
	templateBuilder.Append("script>\r\n\r\n");


	templateBuilder.Append("\r\n<!--/Footer-->\r\n\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
