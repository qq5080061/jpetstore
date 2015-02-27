<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="includeHeader.jsp" %>
<!-- 
<!DOCTYPE html>
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" type="image/x-icon" href="http://static.yeeyan.org/images/favicon.ico">

<title>译言网 | 为何你必须对自我训化保持耐心</title>
<meta name="description" content="当你为了实现成功、富足或其他积极改变， 利用启动效应，或其他每日强化技巧进行自我训化时，保持耐心就是关键。">
<meta name="keywords" content="启动效应,指数增长,自我训化">
<meta name="author" content="译言">
<meta property="qc:admins" content="13002727051166727">
<meta name="wumiiVerification" content="5f1eb70e-f70c-4a30-a887-dae826908636">
<meta property="wb:webmaster" content="a2f71d3e5a2291c0">


<script type="text/javascript" async="" src="./../common/relatedItemsWidget.htm"></script>
<script type="text/javascript" src="./../common/jquery-1.9.1.min.js"></script>
</head>
<body>

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
-->
<style>
.tipone{ width:265px; height:auto; background:#ECF0F1; border:#BDC3C7 1px solid; padding:10px 10px 15px 10px;border-radius:3px;word-wrap:break-word;word-break:break-all; }
.fl{ float:left !important; display:inline}
.fr{ float:right!important; display:inline}
.boxinit { width:250px; height:80px; border:#E3E3E3 1px solid; margin:10px 0 0;outline-style: none;font-size:12px;padding:5px;color:#515252;}
.btnit{ height:25px; clear:both; margin-top:10px; line-height:25px;color:#515252;}
.btnit .cancel{ display:block; text-align:center; color:#fff;height:25px; line-height:25px; padding:0px 10px; background-color:#BDC3C7; border:#95A5A6 1px solid;border-radius:3px;}
.btnit .go{ display:block;text-align:center; color:#fff;height:25px; line-height:25px; padding:0px 10px; background-color:#3498DB;border-radius:3px;margin-left:10px;}
.btnit em{cursor:pointer;color:#3498DB;font-style:normal;font-size:12px;} 
.error_box{vertical-align:middle;margin:0 0 0 10px;padding:0;float:left;}
.error_box input{margin-right:3px;}
</style>
<script>
var report={
			 domain:'http://source.yeeyan.org',
			 report_u_id:'522614',
			 report_show_name:'fumer',
			 report_item_id:'444093',
			 report_category:'translation',

		     send_jsonp:function(url){
		     			var newscript = document.createElement('script');
					    newscript.src = this.domain+url;
					    newscript.onload = newscript.onreadystatechange = function(){
					        if (!this.readyState || 'loaded' === this.readyState || 'complete' === this.readyState){
					            this.onload = this.onreadystatechange = null;
					            this.parentNode.removeChild(this);
					        }
					    }
					    document.getElementsByTagName('head')[0].appendChild(newscript);
		     },
			 callback:function(obj){
				 	if(obj.result=='success'){ 
						 	this.remove_report();
					}
			},
			add_report:function(obj){
				obj.onclick=function(){ return false;};
				if(document.getElementById('report_id')){
							$("#report_id").fadeOut(500);
					}

				 var report_type=$("input[name='report_type']:checked").val();
				 var report_content=document.getElementById('report_value').value;
				 report_content=encodeURIComponent(report_content);
			 	var url='/report';
				url+='?user_id='+this.report_u_id; 
				url+='&item_id='+encodeURIComponent(this.report_item_id); 
				url+='&username='+this.report_show_name; 
				url+='&category='+this.report_category; 
				url+='&type='+report_type; 
				url+='&content='+report_content; 
				url+='&rand='+Math.random(); 
			    this.send_jsonp(url);
			},
			 remove_report:function(){
					if(document.getElementById('report_id')){
							document.getElementById('report_id').parentNode.removeChild(document.getElementById('report_id'));
					}
			},
			reportit:function(event,report_category,report_item_id){
							this.report_item_id=report_item_id;
							this.report_category=report_category;
							this.remove_report();
							var ehtml='<div class="tipone"><div class="btnit"><div class="error_box"><input type="radio" value="1" name="report_type" checked="checked"><em>广告</em></div><div class="error_box"><input type="radio" value="2" name="report_type"><em>色情</em></div><div class="error_box"><input type="radio" value="3" name="report_type"><em>违法</em></div><div class="error_box"><input type="radio" value="4" name="report_type"><em>垃圾</em></div><div class="error_box"><input type="radio" value="5" name="report_type"><em>抄袭</em></div><div class="error_box"><input type="radio" value="6" name="report_type" onclick="document.getElementById(\'report_content\').style.display=\'block\';"><em>其他</em></div></div><div id="report_content" style="display:none;"><textarea id="report_value" class="boxinit"></textarea></div><div class="btnit"><a onclick="report.remove_report()" class="cancel fl" href="javascript:void(0)">取消</a><a onclick="report.add_report(this)" class="go fr" href="javascript:void(0)">提交</a></div></div>';
							var new_element = document.createElement("div");
				            new_element.innerHTML=ehtml;
				            new_element.id = 'report_id';
				            new_element.style.position = "absolute";
				            document.getElementsByTagName("body")[0].appendChild(new_element);
				            var posx = 0;
				            var posy = 0;
				            event = event || window.event;
				            if (event.pageX || event.pageY){
				                posx = event.pageX;
				                posy = event.pageY;
				            } else if (event.clientX || event.clientY){
				                if(document.documentElement.scrollTop){
				                    posx = event.clientX + document.documentElement.scrollLeft;
				                    posy = event.clientY + document.documentElement.scrollTop;
				                }else{
				                    posx = event.clientX + document.body.scrollLeft;
				                    posy = event.clientY + document.body.scrollTop;
				                }
				            } 
				            new_element.style.top = (posy+10) + "px";
							new_element.style.left = (posx+1) + "px";
			}
	};
</script>

<!-- contents -->
<div class="change_box_bg"><div class="change_box">
	<div class="title"><a class="hidden_change_box" onclick="hidden_change_box()" href="javascript:void(0)">×</a>提示</div>
	<p id="showalerwindow_content">您已经赞过此文了。</p>
	<p id="show_botton" class="b"><span><a class="hidden_change_box btn_slide" onclick="hidden_change_box()" href="javascript:void(0)">确定</a></span></p>
</div></div>
<div class="y_main fbg clearfix">
		<div class="y_go_to_backtop" style="display: block;"><a style="left:530px" title="返回顶部" href="javascript:void(0)" onclick="go_to_backtop()"></a> </div>
		<div class="y_l no_border">
            			<h1 style="padding:15px 90px 5px 20px"><c:out value="${topic.title}"/>												<span class="edit"><a href="javascript:void(0)" onclick="report.reportit(event,&#39;translation&#39;,&#39;444093&#39;)">举报</a></span>			</h1>
			<div class="y_s_author y_article_l_author">
				<span>译者：<a href="http://user.yeeyan.org/u/Trumen"> <c:out value="${topic.author}"/></a></span>
				<span>原作者：Steve Pavlina</span>			</div>
			<div class="y_s_author y_article_l_author">
				<span>发表时间：2015-02-16</span><span>浏览量：<c:out value="${topic.views}"/></span><span>评论数：2</span><span>挑错数：0</span>
			</div>
<!-- TODO  -->
			<div class="y_article_abstract">
				当你为了实现成功、富足或其他积极改变， 利用启动效应，或其他每日强化技巧进行自我训化时，保持耐心就是关键。			
			</div>
<!-- TODO  -->

			<div class="y_article_content clearfix">
				<c:out value="${topic.contents}" escapeXml="false"/>
			</div>

			<!-- 频道+标签 -->
			<div class="y_article_tag clearfix">
				<ul>
					<li class="f">频道：</li>
					<li><a href="XXXX"><c:out value="${topic.channel}" /></a></li>
				</ul>
				<ul>
					<li class="f">标签：</li>
					<li><span><a
							href="http://article.yeeyan.org/tags/%E5%90%AF%E5%8A%A8%E6%95%88%E5%BA%94">启动效应</a></span></li>
					<li><span><a
							href="http://article.yeeyan.org/tags/%E6%8C%87%E6%95%B0%E5%A2%9E%E9%95%BF">指数增长</a></span></li>
					<li><span><a
							href="http://article.yeeyan.org/tags/%E8%87%AA%E6%88%91%E8%AE%AD%E5%8C%96">自我训化</a></span></li>
				</ul>
			</div>
		<!-- 
						<div style="padding:0 0 0 20px;margin:0;">
				<div><span style="float:left;padding-left:10px;font-weight:bold;"> 相关译文</span><span onclick="window.open(&#39;http://www.wumii.com/widget/relatedItems&#39;)" style="color:#999;cursor:pointer;float:right;padding-right:40px;font-size:12px;">来自无觅插件</span> </div>
				
					<style>
					.wumii-hook .wumii-related-items-div .wumii-footer {display:none;} 
					.wumii-hook .wumii-related-items-div .wumii-internal .wumii-widget-title{display:none;}
					</style>
					<div class="wumii-hook"><div class="wumii-related-items-div" wmode="2" style="margin: 0; border: none; padding: 0; clear: both; overflow: hidden; *zoom: 1; *position: relative;">
    
    
    
        <div class="wumii-internal" style="padding: 0; margin: 0; border: none; clear: both; display: block;">
        <div class="wumii-widget-title" style="margin: 0; border: none; padding: 20px 0 5px; _padding-top:10px; text-indent: 0; text-align: left; font-weight: bold; ">  相关的译文</div>
                <div class="wumii-image-row" style="clear: both; overflow: hidden; border: none; padding: 0;margin: 0;_zoom: 1;" fromurl="http%3A%2F%2Farticle.yeeyan.org%2Fview%2F357091%2F444093"><a class="wumii-image-block" hidefocus="true" title="金砖五国：经济增长，幸福指数不涨。" onmouseout="this.style.backgroundColor=&#39;&#39;" onmouseover="this.style.backgroundColor=&#39;#FFFFFF&#39;" style="display: block; float: left; text-decoration: none; border-bottom: none; cursor: pointer; position: relative; margin: 5px 0 0 -1px; padding: 5px; text-align: left; outline: none; background-image: none; border-left: 1px solid #FFFFFF !important;" href="http://article.yeeyan.org/view/239818/265576" redirecturl="">
    <span class="wumii-image-clip" style="overflow: hidden; position: relative; display: block; width: 104px; height: 104px; margin: 0 0 5px; padding: 0; border: 1px solid #FFFFFF;">
        <img class="wumii-image" style="position: absolute; margin: 0px; padding: 0px; border: none; left: 2px; top: 2px; width: 100px; height: 100px; clip: rect(0px 100px 100px 0px); visibility: visible; background: none;" image-url="http://static.wumii.cn/site_images/ti/rKu7N3gR.jpg?i=GN68xtzg" src="./../common/rKu7N3gR.jpg">
    </span>
    <div class="wumii-image-title" style="width: 106px; height: 45px; margin: 3px 0 0 0; padding: 0; text-indent: 0; text-align: left; border: none; font: 12px/15px arial; color: #333333; overflow: hidden; white-space: normal; clear: both;">金砖五国：经济增长，幸福指数不涨。</div>
</a><a class="wumii-image-block" hidefocus="true" title="全球暖化危及自然和谐" onmouseout="this.style.backgroundColor=&#39;&#39;" onmouseover="this.style.backgroundColor=&#39;#FFFFFF&#39;" style="display: block; float: left; text-decoration: none; border-bottom: none; cursor: pointer; position: relative; margin: 5px 0 0 -1px; padding: 5px; text-align: left; outline: none; background-image: none; border-left: 1px solid #FFFFFF !important;" href="http://article.yeeyan.org/view/12583/126734" redirecturl="">
    <span class="wumii-image-clip" style="overflow: hidden; position: relative; display: block; width: 104px; height: 104px; margin: 0 0 5px; padding: 0; border: 1px solid #FFFFFF;">
        <img class="wumii-image" style="position: absolute; margin: 0px; padding: 0px; border: none; left: 2px; top: 2px; width: 100px; height: 100px; clip: rect(0px 100px 100px 0px); visibility: visible; background: none;" image-url="http://cdn.yeeyan.com/upload/file/2013/08/2613575224566.png" src="./../common/2613575224566.png">
    </span>
    <div class="wumii-image-title" style="width: 106px; height: 45px; margin: 3px 0 0 0; padding: 0; text-indent: 0; text-align: left; border: none; font: 12px/15px arial; color: #333333; overflow: hidden; white-space: normal; clear: both;">全球暖化危及自然和谐</div>
</a><a class="wumii-image-block" hidefocus="true" title="海水酸化会削弱鲨鱼的感官功能（图）" onmouseout="this.style.backgroundColor=&#39;&#39;" onmouseover="this.style.backgroundColor=&#39;#FFFFFF&#39;" style="display: block; float: left; text-decoration: none; border-bottom: none; cursor: pointer; position: relative; margin: 5px 0 0 -1px; padding: 5px; text-align: left; outline: none; background-image: none; border-left: 1px solid #FFFFFF !important;" href="http://article.yeeyan.org/view/251964/420198" redirecturl="">
    <span class="wumii-image-clip" style="overflow: hidden; position: relative; display: block; width: 104px; height: 104px; margin: 0 0 5px; padding: 0; border: 1px solid #FFFFFF;">
        <img class="wumii-image" style="position: absolute; margin: 0px; padding: 0px; border: none; left: 2px; top: 2px; width: 100px; height: 100px; clip: rect(0px 100px 100px 0px); visibility: visible; background: none;" image-url="http://static.wumii.cn/site_images/ti/IzKjNEiV.jpg?i=lonEpguQ" src="./../common/IzKjNEiV.jpg">
    </span>
    <div class="wumii-image-title" style="width: 106px; height: 45px; margin: 3px 0 0 0; padding: 0; text-indent: 0; text-align: left; border: none; font: 12px/15px arial; color: #333333; overflow: hidden; white-space: normal; clear: both;">海水酸化会削弱鲨鱼的感官功能（图）</div>
</a><a class="wumii-image-block" hidefocus="true" title="明年中国经济增长目标仍保八" onmouseout="this.style.backgroundColor=&#39;&#39;" onmouseover="this.style.backgroundColor=&#39;#FFFFFF&#39;" style="display: block; float: left; text-decoration: none; border-bottom-style: none; cursor: pointer; position: relative; margin: 5px 0px 0px -1px; padding: 5px; text-align: left; outline: none; border-left-width: 1px !important; border-left-style: solid !important; border-left-color: rgb(255, 255, 255) !important; background-image: none;" href="http://article.yeeyan.org/view/168855/158683" redirecturl="">
    <span class="wumii-image-clip" style="overflow: hidden; position: relative; display: block; width: 104px; height: 104px; margin: 0 0 5px; padding: 0; border: 1px solid #FFFFFF;">
        <img class="wumii-image" style="position: absolute; margin: 0px; padding: 0px; border: none; left: 2px; top: 2px; width: 100px; height: 100px; clip: rect(0px 100px 100px 0px); visibility: visible; background: none;" image-url="http://cdn.yeeyan.com/upload/file/2013/08/2613575224566.png" src="./../common/2613575224566.png">
    </span>
    <div class="wumii-image-title" style="width: 106px; height: 45px; margin: 3px 0 0 0; padding: 0; text-indent: 0; text-align: left; border: none; font: 12px/15px arial; color: #333333; overflow: hidden; white-space: normal; clear: both;">明年中国经济增长目标仍保八</div>
</a><a class="wumii-image-block" hidefocus="true" title="找寻自我" onmouseout="this.style.backgroundColor=&#39;&#39;" onmouseover="this.style.backgroundColor=&#39;#FFFFFF&#39;" style="display: block; float: left; text-decoration: none; border-bottom: none; cursor: pointer; position: relative; margin: 5px 0 0 -1px; padding: 5px; text-align: left; outline: none; background-image: none; border-left: 1px solid #FFFFFF !important;" href="http://article.yeeyan.org/view/376241/345000" redirecturl="">
    <span class="wumii-image-clip" style="overflow: hidden; position: relative; display: block; width: 104px; height: 104px; margin: 0 0 5px; padding: 0; border: 1px solid #FFFFFF;">
        <img class="wumii-image" style="position: absolute; margin: 0px; padding: 0px; border: none; left: 2px; top: 2px; width: 100px; height: 100px; clip: rect(0px 100px 100px 0px); visibility: visible; background: none;" image-url="http://cdn.yeeyan.com/upload/file/2013/08/2613575224566.png" src="./../common/2613575224566.png">
    </span>
    <div class="wumii-image-title" style="width: 106px; height: 45px; margin: 3px 0 0 0; padding: 0; text-indent: 0; text-align: left; border: none; font: 12px/15px arial; color: #333333; overflow: hidden; white-space: normal; clear: both;">找寻自我</div>
</a></div>
    </div><div class="wumii-footer" style="margin: 0; border: none; padding: 5px 0; clear: both; text-align: right;">
            <a href="http://www.wumii.com/widget/relatedItems" target="_blank" title="无觅关联推荐" style="font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: arial; color: rgb(187, 187, 187); border-bottom-style: none; word-wrap: normal; display: inline; cursor: pointer;">无觅关联推荐[?]</a>
                
        </div>
</div></div><script type="text/javascript" id="wumiiRelatedItems">
						var wumiiPermaLink = 'http://article.yeeyan.org/view/357091/444093';
						var wumiiTitle = "为何你必须对自我训化保持耐心";
						var wumiiTags = "启动效应,指数增长,自我训化";
						var wumiiSitePrefix = "http://article.yeeyan.org/";
						var wumiiParams = "&num=10&mode=1&pf=JAVASCRIPT";
						var js_wumii = document.createElement('script'); 
						js_wumii.type = 'text/javascript'; 
						js_wumii.async = true;
						js_wumii.src = 'http://widget.wumii.com/ext/relatedItemsWidget.htm';
						var wupos = document.getElementsByTagName('script')[0];
						wupos.parentNode.insertBefore(js_wumii, wupos);
					</script> 
			</div>
 -->
<script> 
var delete_type;
function show_botton_content(delete_type, cid){
	if (delete_type == 'deletecomment') {
			str = '<span><a class="hidden_change_box btn_slide" onclick="hidden_change_box()" href="javascript:void(0)">取消</a></span>  <span><a class="btn blue_btn"  href="javascript:void(0)" onclick="deletecomment(' + cid + ')">确定</a></span>'
			$("#showalerwindow_content").html('你确定要删除评论吗？');
		}else{
			str = '<span><a class="hidden_change_box btn_slide" onclick="hidden_change_box()" href="javascript:void(0)">确定</a></span>'
		}
		 document.getElementById("show_botton").innerHTML =str;
}
function show_alertwin(text, cid){
	var w_width = ($(window).width() - 350)/2;
	var w_height = $(document).scrollTop() + ($(window).height() - 250)/2;
	$(".change_box").css('left',w_width);
	$(".change_box").css('top',w_height);
	$(".change_box_bg").show();
	$(".change_box_bg").css('height', $(document.body).height());
	$(".change_box_bg").css('width', $(window).width());
	$("#showalerwindow_content").html(text);
	delete_type = text;
	show_botton_content(delete_type, cid);
}
function hidden_change_box(){
	$(".change_box_bg").css('display', 'none');
	return false;
}
function up(tid,obj) {
	 
		var islogin=true;
		if(islogin){
		$.post('/translation_up', {tid: tid}, function(data) {
			if(data=='true'){
				var up_count=document.getElementById('up_count').innerHTML.replace(/(^\s+)|(\s+$)/g, "");
				up_count=parseInt(up_count,10)+1;
				document.getElementById('up_count').innerHTML=up_count;

								var no_upusers = $("#no_up_users").attr("id");
				if (no_upusers == "no_up_users") {
					$("#no_up_users").html("<a title='fumer' href='http://user.yeeyan.org/u/522614'><img src='http://static.yeeyan.org/default.jpg' /></a>");
					$("#no_up_users").css("padding-top", "5px");
				};
				
			}else{
				show_alertwin('这篇您已赞过了，可以去支持其它好文章。','');
			}
		});
	}else{
				window.location.href="http://www.yeeyan.org/login";
	}
}
function tabshow(k){
	$("#comment_0").hide();
	$("#comment_1").hide();
	$("#comment_"+k).show();
	document.getElementById('comment_tab_0').className='';
	document.getElementById('comment_tab_1').className='';
	document.getElementById('comment_tab_'+k).className='l active';
}
function favorate(tid){
	 
		var islogin=true;
		if(islogin){
		var is_fav = $("#fav_button").find("i").attr("class");
		if (is_fav == "icon-star") {
			show_alertwin('您已经收藏过此文了','');
		} else {
			$.post('/translation_favor/', {tid: tid}, function(data) {});
			$("#fav_button").find(".icon-star-empty").removeClass();
			$("#fav_button").find("i").addClass("icon-star");
		}
	}else{
		window.location.href="http://www.yeeyan.org/login";
	}
}
function before_login(){
	show_alertwin('请先 <a href="http://www.yeeyan.org/login">登录</a>，才能使用此功能','');
}
function reply(obj, cid){
	var username=obj.parentNode.parentNode.parentNode.getElementsByTagName('a')[0].innerHTML;
	go_to_comment();
	document.getElementById('comment_content').value='@'+username+' ';
	document.getElementById('reply_name').innerHTML='回复 <b>'+username+'&nbsp;&nbsp;<a href="javascript:void(0)" onclick="change_reply()">X</a><b>';
	document.getElementById('comment_pid').value=cid;
	$('#comment_content').focus();
}
function change_reply(){
	document.getElementById('reply_name').innerHTML = '';
	document.getElementById('comment_pid').value = '0';
	document.getElementById('comment_content').value='';
}
function vote(cid,type) {
 $.post('/comment_vote', {cid: cid,type: type}, function(data) {
	 if (data == 'true'){
		var count=$("#vote_"+type+"_"+cid).html();
		count=parseInt(count,10)+1;
		$("#vote_"+type+"_"+cid).html(count);
	 } else {
		show_alertwin('您已经投票过了。','');
	 }
 });
}
function deletecomment(cid){
	window.location.href='?op=delcomment&id='+cid
}
</script>
<script>
document.onmousedown = function(event){
	event =  window.event || event; 
	var click_obj = document.elementFromPoint(event.clientX, event.clientY); 
	if(is_his_parent(click_obj,document.getElementById("sharelist")) == false && is_his_parent(click_obj,document.getElementById("sharebtn")) == false ){ 
		document.getElementById('sharelist').style.display='none'; 
	}
}
function is_his_parent(obj,pobj){
	while (obj != undefined && obj != null && obj.tagName.toUpperCase() != 'BODY' && obj.tagName.toUpperCase() != 'HTML' ){       
		if (obj == pobj){
			return true;
		}else{
			obj = obj.parentNode;
		}
	}
	return false;
}
</script>
			<div class="y_article_comment">

				<div class="clearfix">
				<div id="comment_0">
								<div id="cl_639554" class="l_box clearfix">
						<div class="img"><a href="http://user.yeeyan.org/u/478162"><img style="width:50px;height:50px;" src="./../common/default(1).jpg"></a></div>
						<div class="r">
							<div class="t clearfix">
								<a href="http://user.yeeyan.org/u/478162">北京木兰</a>
								<div class="up_down">
																		2015-02-16 08:56								</div>
								</div>
							<!-- -->
														<!-- -->
							<div class="txt clearfix" style="word-break:break-all;word-wrap:break-word;">受益了，谢谢。</div>
							<div class="i"><a href="javascript:void(0);" onclick="vote(639554,&#39;up&#39;)"><span id="vote_up_639554">0</span> <i class="icon-chevron-up"></i></a><span class="line">|</span><a href="javascript:void(0);" onclick="vote(639554,&#39;down&#39;)"><span id="vote_down_639554">0</span> <i class="icon-chevron-down"></i></a> <span class="reply"><a href="javascript:void(0)" onclick="reply(this,&#39;639554&#39;)">回复</a>  <a href="javascript:void(0)" onclick="report.reportit(event,&#39;comment&#39;,&#39;444093#cl_639554&#39;)">举报</a> </span>   </div>
						</div>
					</div>
								<div id="cl_639563" class="l_box clearfix">
						<div class="img"><a href="http://user.yeeyan.org/u/366556"><img style="width:50px;height:50px;" src="./../common/default(1).jpg"></a></div>
						<div class="r">
							<div class="t clearfix">
								<a href="http://user.yeeyan.org/u/366556">sandraxue</a>
								<div class="up_down">
																		2015-02-16 10:15								</div>
								</div>
							<!-- -->
														<!-- -->
							<div class="txt clearfix" style="word-break:break-all;word-wrap:break-word;">abundant 是`指丰富自我，充实的意思吗？</div>
							<div class="i"><a href="javascript:void(0);" onclick="vote(639563,&#39;up&#39;)"><span id="vote_up_639563">0</span> <i class="icon-chevron-up"></i></a><span class="line">|</span><a href="javascript:void(0);" onclick="vote(639563,&#39;down&#39;)"><span id="vote_down_639563">0</span> <i class="icon-chevron-down"></i></a> <span class="reply"><a href="javascript:void(0)" onclick="reply(this,&#39;639563&#39;)">回复</a>  <a href="javascript:void(0)" onclick="report.reportit(event,&#39;comment&#39;,&#39;444093#cl_639563&#39;)">举报</a> </span>   </div>
						</div>
					</div>
							</div>
<style>
.nologin_btn {
    background-color: #019AD2;
    background-image: -moz-linear-gradient(#eeeeee, #cccccc);
    background-image: -webkit-linear-gradient(#eeeeee, #cccccc);
    color: #FFFFFF;
    border: 1px solid #dddddd;
    text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
}
.nologin_btn:hover {
    background-color: #0271BF;
    background-image: -moz-linear-gradient(#eeeeee, #cccccc);
    background-image: -webkit-linear-gradient(#eeeeee, #cccccc);
    background-repeat: repeat-x;
    border-color: #dddddd;
    color: #FFFFFF;
    text-decoration: none;
}
</style>
					<div id="comment" class="login">发表评论</div>
					<div class="l_box n clearfix">
											<div class="img"><a href="http://user.yeeyan.org/u/522614"><img style="width:50px;height:50px;" src="./../common/default(1).jpg"></a></div>
											<div class="r">
												<div class="t"><a href="http://user.yeeyan.org/u/522614">fumer</a> <span id="reply_name"></span></div> 
												<div class="txt clearfix">
		<form action="http://article.yeeyan.org/docomment" method="POST" name="comment_frm">
								<textarea name="data[Comment][content]" id="comment_content" rows="7"></textarea>
														<input type="hidden" value="444093" name="data[Comment][translation_id]">
								<input type="hidden" value="http://article.yeeyan.org/view/357091/444093#comment" name="data[Comment][current_url]">
								<input type="hidden" value="0" name="data[Comment][parent_id]" id="comment_pid">
								<input type="hidden" value="522614" name="data[Comment][author_id]">
													  </form></div>
							<div><a href="javascript:void(0)" onclick="dosubmit(this)" class="btn btn_r btn_s blue_btn">发表评论</a></div>
		
						</div>
					</div>
				</div>
			</div>
		</div>
<script>
$(".l_box").mouseover(function(){
	$(this).find(".del_reply").show();
});
$(".l_box").mouseout(function(){
	$(this).find(".del_reply").hide();
});


function login(){
	window.location.href='http://www.yeeyan.org/login';
}
function dosubmit(obj){
	var content = document.getElementById('comment_content').value.replace(/<[^>]+>/g, "");
	if(content!=''){
		obj.onclick=function(){return false;}
		document.comment_frm.submit();
	}
}
</script>
		<div class="y_r no_border full_r">
			<div id="articl_operation" style="position: fixed; top: 0px; width: 320px;">
				<ul class="y_articles_up clearfix">
					<li class="up" onclick="up(444093,this);"><a href="javascript:void(0);"> <i class="icon-thumbs-up"></i><span id="up_count">1</span></a></li>
					 
												<li><a href="http://user.yeeyan.org/u/478162"><img title="北京木兰" src="./../common/default.jpg"></a> </li> 
												<li class="txt"></li>
									</ul>
				<div class="first_win" style="display:none;">双语对照在这里啦<div class="triangle"></div></div>
				<ul class="y_articles_operation clearfix">
					<li id="show_first_win" class="first"><a target="_blank" href="http://article.yeeyan.org/compare/444093"><i class="icon-paper-clip"></i> 挑错</a></li>
					<li><a href="javascript:void(0)" onclick="go_to_comment()"><i class="icon-comments"></i> 评论</a></li>
					<li id="fav_button"><a href="javascript:void(0)" onclick="favorate(444093)"><i class="icon-star-empty"></i> 收藏</a></li>
					<li id="sharebtn" class="noline"><a href="javascript:void(0)" onclick="$(&#39;#sharelist&#39;).toggle();"><i class="icon-share"></i> 分享</a></li>
					<ul class="y_show_share y_blue_txt" id="sharelist" style="display: none;">
						<li class="s_weibo"><a href="javascript:void(0)" onclick="window.open(&#39;http://v.t.sina.com.cn/share/share.php?url=&#39;+encodeURI(document.location)+&#39;&amp;title=&#39;+encodeURI(&#39;为何你必须对自我训化保持耐心 @译言 &#39;) , &#39;newwindow&#39;, &#39;height=330,width=550,top=&#39; + (screen.height - 280) / 2 + &#39;,left=&#39; + (screen.width - 550) / 2 + &#39;, toolbar=no, menubar=no, scrollbars=no,resizable=yes,location=no, status=no&#39;)">新浪微博</a></li>
						<li class="s_qq"><a href="javascript:void((function(s,d,e){try{}catch(e){}var f='http://v.t.qq.com/share/share.php?',u=d.location.href,p=['url=',e(u),'&title=',e(d.title),'&appkey='].join('');function a(){if(!window.open([f,p].join(''),'mb', ['toolbar=0,status=0,resizable=1,width=620,height=450,left=',(s.width- 620)/2,',top=',(s.height-450)/2].join('')))u.href=[f,p].join('');}; if(/Firefox/.test(navigator.userAgent)){setTimeout(a,0)}else{a()}}) (screen,document,encodeURIComponent));">腾讯微博</a></li>
						<li class="s_renren"><a href="javascript:void(0)" onclick="window.open(&#39;http://www.connect.renren.com/share/sharer?url=&#39;+encodeURI(document.location)+&#39;&amp;title=&#39;+encodeURI(document.title), &#39;newwindow&#39;, &#39;height=330,width=550,top=&#39; + (screen.height - 280) / 2 + &#39;,left=&#39; + (screen.width - 550) / 2 + &#39;, toolbar=no, menubar=no, scrollbars=no,resizable=yes,location=no, status=no&#39;)">人人网</a></li>
						<li class="s_douban"><a href="javascript:void(0)" onclick="window.open(&#39;http://www.douban.com/recommend/?url=&#39;+encodeURI(document.location)+&#39;&amp;title=&#39;+encodeURI(document.title)+&#39;&amp;v=1&#39;, &#39;newwindow&#39;, &#39;height=330,width=550,top=&#39; + (screen.height - 280) / 2 + &#39;,left=&#39; + (screen.width - 550) / 2 + &#39;, toolbar=no, menubar=no, scrollbars=no,resizable=yes,location=no, status=no&#39;);">豆瓣网</a></li>
					</ul>
				</ul>

								
			</div>
						<div class="y_s_box" style="padding-bottom:0;overflow:hidden;">
				<a href="http://group.yeeyan.org/translation-q-n-a" target="_blank"><img style="border:none;width:328px;" src="./../common/14180926100.png"></a> 
			</div>
						<div class="y_s_box y_article_rbox">
								<div class="title">来自小组</div>
				<div class="l_s_box clearfix">
					<div class="img_80"><a href="http://group.yeeyan.org/StevePavlina"><img src="./../common/2316.jpg"></a></div>
					<div class="r_80">
						<div class="t"><a href="http://group.yeeyan.org/StevePavlina">StevePavlina.com 博客网站中文翻译</a></div>
						<div class="txt" style="overflow: hidden; height: 56px;">StevePavlina.com是Google搜索个人发展类(personal development)排名世界第一的博客网站。
各位译友可以参照www.stevepavlina.com/blog/archives/里面的文章进行翻译。
这是我目前译完的内容(www.stevepavlinachina.com/archives.html)。
Steve在2010年的12月主动放弃了自己网站上全部内容的版权，所以大家可以开足马力，尽情翻译，肆意分享。 Thank you，Steve
Pavlina。

</div>
					</div>
				</div>
								<div class="title">译者信息</div>
				<div class="l_s_box clearfix">
					<div class="img"><a href="http://user.yeeyan.org/u/Trumen"><img style="width:50px;height:50px;" src="./../common/14230297387.jpg"></a></div>
					<div class="r">
						<div class="t">
														<span>
								<a class="btn btn_s btn_slide" href="javascript:void(0)" onclick="followed(this,357091)">关注</a>
							</span>
														<a href="http://user.yeeyan.org/u/Trumen">SPC</a></div>
						<div class="txt" style="margin-top:3px;">更多博客译文：<br>
<br>
www.stevepavlinachina.com/archives.html<br>
<br>
个人成长，一路分享<br>
<br>
微博/微信公众号：聪明人的个人发展</div>
					</div>
				</div>
							</div>
	
<script>
$("#show_first_win a").mouseenter(function(){
	$(".first_win").fadeTo(300,1);
});
$("#show_first_win a").mouseleave(function(){
	$(".first_win").fadeTo(100,0);
});
function followed(obj,uid){
	if(obj.innerHTML.replace(/(^\s+)|(\s+$)/g, "")=='关注'){
		obj.innerHTML='取消关注';
		obj.style.color='#999';
	}else{
		obj.innerHTML='关注';
		obj.style.color='#0088CC';
	}
	$.post("/followed", {uid:uid},
		function(data){
		 	 
		});
}
</script>

			<div class="y_article_rbox" style="background:none;margin-top:0;"> 
				<div class="y_article_copyright" style="margin-top:0;">
					<div class="content"> 
						<ul style="white-space: normal;">
														<li>原文标题：<a target="_blank" class="sa_blue" href="http://source.yeeyan.org/view/649243_6c4">  Why You Must Be Patient With Self-Conditioning</a></li> 
							<li>原文作者：Steve Pavlina</li>
							<li>原文来源：<a target="_blank" href="http://www.stevepavlina.com/blog/2014/09/why-you-must-be-patient-with-self-conditioning/" class="sa_blue">stevepavlina.com</a></li>
						</ul>
					</div>
				</div>
			</div>

							<div class="y_s_box" style="padding-bottom:0;overflow:hidden;">
					<a href="http://read.douban.com/ebook/6083852/?dcs=read-store&dcm=weibo" target="_blank"><img style="border:none;width:328px;" src="./../common/14162097111.png"></a> 
				</div>
			
			<div class="y_article_rbox" style="background-image:none;margin-top:0;padding-top:0;"> 
				<div class="y_article_copyright" style="background-image:none;">
					<div class="content">
						<span>版权声明：</span><br>
						本译文仅用于学习和交流目的。<br>非商业转载请注明译者、出处，并保留文章在译言的完整链接。商业合作请联系 biz@yeeyan.com
					</div>
				</div>
			</div>

			    			<div class="y_s_box" style="padding-bottom:0;overflow:hidden;">
    				<a href="http://g.yeeyan.org/books/2244" target="_blank"><img style="border:none;width:328px;" src="./../common/14078327786.png"></a> 
    			</div>
						<div id="y_article_bottom"></div>
		</div>
	</div>

	<div class="y_footer y_grey clearfix">
		<div class="y_footer_line" id="y_footer_line"></div>
		<ul class="l">
			<li>Copyright © 2014 yeeyan.org&nbsp;&nbsp;|&nbsp;&nbsp;<a href="http://www.yeeyan.org/terms">服务条款</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="http://www.yeeyan.org/privacy">隐私政策</a></li>
			<li>北京译言协力传媒科技有限公司</li>
			<li>京ICP证10000013号&nbsp;&nbsp;京公网安备11010502025099号</li>
		</ul>
		<ul class="r">
                            <!-- other.yeeyan.org -->
    			<li><a target="_blank" href="http://www.yeeyan.org/main/index">旧版回顾</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a target="_blank" href="http://e.weibo.com/yeeyan">官方微博</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="http://www.yeeyan.org/rss">RSS 订阅</a></li>
    			<li><a href="http://www.yeeyan.org/aboutus">关于我们</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="http://www.yeeyan.org/joinus">加入我们</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="http://www.yeeyan.org/contactus">联系我们</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="http://www.yeeyan.org/suggest">意见反馈</a></li>
                    </ul>
	</div>

</body></html>