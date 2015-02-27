<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"    uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head><title>JPetStore Demo</title>
<meta content="text/html; charset=UTF-8" http-equiv="Content-Type" />
<!--  
<META HTTP-EQUIV="Cache-Control" CONTENT="max-age=0">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<meta http-equiv="expires" content="0">
<META HTTP-EQUIV="Expires" CONTENT="Tue, 01 Jan 1980 1:00:00 GMT">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
-->
<link rel="apple-touch-icon" href="http://static.yeeyan.org/upload/image/2013/11/25/13853449839.png"> 
<link type="text/css" rel="stylesheet" rev="stylesheet" href="../css/style2015.css">
<link type="text/css" rel="stylesheet" rev="stylesheet" href="../css/font-awesome.min.css">
<link type="text/css" rel="stylesheet" rev="stylesheet" href="../css/fontdiao.css">

<!--[if IE 7]>
  <link rel="stylesheet" href="http://static.yeeyan.org/css/font-awesome-ie7.min.css">
<![endif]-->
<!-- <script type="text/javascript" src="http://static.yeeyan.org/js/jquery-1.3.2.min.js"></script> -->

<script type="text/javascript" async="" src="./../common/relatedItemsWidget.htm"></script>
<script type="text/javascript" src="../css/jquery-1.9.1.min.js"></script>

</head>

<body bgcolor="white">
	<div class="y_header">
		<div class="width">
			<div class="content clearfix">
				<div class="y_logo"><a href="http://www.yeeyan.org/"><img src="./../common/g_t_logo.png"></a></div>
                <style>#topmenu li {float: left;padding-right: 25px;}</style>
				<ul class="menu" id="topmenu"> 
					<li><a target="_blank" href="http://select.yeeyan.org/">精选</a></li>
                    <li><a target="_blank" href="http://co.yeeyan.org/">协作</a></li>
					<li><a target="_blank" href="http://book.yeeyan.org/">图书</a></li>
					<li><a target="_blank" href="http://baijia.yeeyan.org/">百家</a></li>
					<li><a target="_blank" href="http://business.yeeyan.org/welcome">翻译服务</a></li>
					<li><a target="_blank" href="http://www.yeeyan.org/collaboration">社区合作</a></li>
				</ul> 
				<ul class="info"> 
					 
					<li><a href="http://source.yeeyan.org/create"><i class="icon-edit"></i>发文章</a></li>
					<li><a href="http://user.yeeyan.org/articles/522614/draft"><i class="icon-file-alt"></i>草稿箱</a></li>
					<li><a href="http://user.yeeyan.org/notices"><i class=" icon-bell"></i></a></li>
					<li><a href="http://user.yeeyan.org/messages"><i class="icon-envelope"></i></a></li>
					<li><a href="http://user.yeeyan.org/u/522614"><span><img src="./../common/default.jpg" width="20" height="20"></span></a> <i id="setting_show_btn" onclick="setting_show()" style="cursor:pointer; float:left;" class="icon-caret-down"></i> </li>
					<ul class="y_h_show_setting" style="display: none;" id="setting_show_list">
						<div class="triangle_b"></div>
						<div class="triangle"></div>
						<li><a href="http://user.yeeyan.org/">我的译言</a></li>
						<li><a href="http://user.yeeyan.org/operate/restart">设置</a></li>
						<li><a href="http://www.yeeyan.org/logout">退出</a></li>
					</ul> 
								</ul> 
			</div>
		</div>
		<div class="bottom">
			<div class="content clearfix">
				<ul class="menu clearfix">
					<li id="ysite"><a href="http://www.yeeyan.org/">首页</a></li>
					<li id="ygroup"><a href="http://group.yeeyan.org/">小组</a></li>
					<li id="yarticle" class="active"><a href="http://article.yeeyan.org/">译文库</a></li>
					<li id="ysource"><a href="http://source.yeeyan.org/">原文库</a></li>
				</ul>
				<script>
					function setting_show(){
						if(document.getElementById('setting_show_list').style.display!='none'){
							document.getElementById('setting_show_list').style.display='none';
						}else{
							document.getElementById('setting_show_list').style.display='block';
						}
					}
					document.onmouseup = function(event){
						event =  window.event || event;
						var click_obj = document.elementFromPoint(event.clientX, event.clientY); 
						if(check_parent(click_obj,document.getElementById("setting_show_list")) == false && check_parent(click_obj,document.getElementById("setting_show_btn")) == false ){ 
							if (document.getElementById('setting_show_list')){
								document.getElementById('setting_show_list').style.display='none';
							}
						}
					}
					function check_parent(obj,pobj){
						while (obj != undefined && obj != null && obj.tagName.toUpperCase() != 'BODY' && obj.tagName.toUpperCase() != 'HTML' ){       
							if (obj == pobj){
								return true;
							}else{
								obj = obj.parentNode;
							}
						}
						return false;
					}
					var locationhref=window.location.href;
					var hashparam=locationhref.split('/');
					var args=new Array();
					if(hashparam.length>1){
						var args=hashparam[2].split('.');
					}
					if( args[0]  == "group"){
						document.getElementById("ygroup").className="active";
					}else if( args[0]  == "article"){
						document.getElementById("yarticle").className="active";
					}else if( args[0]  == "source"){
						document.getElementById("ysource").className="active";
					}else{
						document.getElementById("ysite").className="active";
					}
					
					function yeeyan_search(){
						var url='http://www.yeeyan.org/index/search/';
						var keys = document.getElementById('keys').value;
						if(keys!=''){
							window.location.href=url+encodeURI(keys);
						}
					}
					function bindEnter(event) {
						if (event.keyCode == 13) {
							yeeyan_search();
							event.returnValue = false;
						}
					}
				</script>
				<div class="y_search">
					<input class="l" type="text" value="" placeholder="文章、用户、小组" id="keys" onkeydown="bindEnter(event)">
					<input class="r" type="button" value="" title="搜索" onclick="yeeyan_search();">
				</div>
			</div>
		</div>
	</div>
	<style>.y_s_content blockquote{display:block;background:#f6f6f6;color:#666;padding:1em;margin:14px 0;}</style>
	<script>
		function go_to_comment(){
			var height_comment =document.getElementById('comment').offsetTop;
			$("html, body").animate({ scrollTop: height_comment }, 200);
			$('#comment_content').focus();
		}
		function go_to_backtop(){
			$("html, body").animate({ scrollTop:0 },200);
		}
		
		$(function(){
			function keep_backup_btn(){
				if(document.documentElement.scrollTop){
					var scrollY=document.documentElement.scrollTop; 
				}else{
					var scrollY=document.body.scrollTop; 
				}
				if (scrollY > 500) {
					$('.y_go_to_backtop').show(); 
				}else{
					$('.y_go_to_backtop').hide(); 
				}
				var y_article_bottom = document.getElementById("y_article_bottom").offsetTop;
				if (scrollY > y_article_bottom){
					$('#articl_operation').css({'position':'fixed', 'top':'0px', 'width':'320px'});
				}else{
					$('#articl_operation').css({'position':'', 'top':''});
				}
		
			}
			if(/msie/i.test(navigator.userAgent)){
			    window.attachEvent("onscroll", function(){ keep_backup_btn();});
			}else{
			    window.addEventListener("scroll", function(){ keep_backup_btn();}, false);
			}
		});
	</script>

<!-- 
<table background="../images/bkg-topbar.gif" border="0" cellspacing="0" cellpadding="5" width="100%">
  <tbody>
  <tr>
    <td><a href="<c:url value="/shop/index.do"/>"><img border="0" src="../images/logo-topbar.gif" /></a></td>
    <td align="right"><a href="<c:url value="/shop/viewCart.do"/>"><img border="0" name="img_cart" src="../images/cart.gif" /></a>
      <img border="0" src="../images/separator.gif" />

<c:if test="${empty userSession.account}" >
      <a href="<c:url value="/shop/signonForm.do"/>"><img border="0" name="img_signin" src="../images/sign-in.gif" /></a>
</c:if>

<c:if test="${!empty userSession.account}" >
      <a href="<c:url value="/shop/signoff.do"/>"><img border="0" name="img_signout" src="../images/sign-out.gif" /></a>
      <img border="0" src="../images/separator.gif" />
      <a href="<c:url value="/shop/editAccount.do"/>"><img border="0" name="img_myaccount" src="../images/my_account.gif" /></a>
</c:if>

      <img border="0" src="../images/separator.gif" /><a href="../help.html"><img border="0" name="img_help" src="../images/help.gif" /></a>
    </td>
    <td align="left" valign="bottom">
      <form action="<c:url value="/shop/searchProducts.do"/>" method="post">
			  <input type="hidden" name="search" value="true"/>
        <input name="keyword" size="14" />&nbsp;<input border="0" src="../images/search.gif" type="image"/>
      </form>
    </td>
  </tr>
  </tbody>
</table>
 -->
 
<!-- %@ include file="IncludeQuickHeader.jsp" % -->

