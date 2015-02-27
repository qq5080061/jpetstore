<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="includeHeader.jsp" %>
<!--
<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" type="image/x-icon" href="http://static.yeeyan.org/images/favicon.ico">

<title>译言网 | 注册</title>
<meta name="description" content="译言网 | 注册">
<meta name="keywords" content="译言 翻译 译言网 www.yeeyan.org">
<meta name="author" content="译言">
<meta property="qc:admins" content="13002727051166727">
<meta name="wumiiVerification" content="5f1eb70e-f70c-4a30-a887-dae826908636">
<meta property="wb:webmaster" content="a2f71d3e5a2291c0">
<link rel="apple-touch-icon" href="http://static.yeeyan.org/upload/image/2013/11/25/13853449839.png"> 
<link type="text/css" rel="stylesheet" rev="stylesheet" href="./../common/yeeyan2012.css">
<link type="text/css" rel="stylesheet" rev="stylesheet" href="./../common/font-awesome.min.css">
<link type="text/css" rel="stylesheet" rev="stylesheet" href="./../common/fontdiao.css">


<script type="text/javascript" src="./../common/jquery-1.9.1.min.js"></script>
<script src="./../common/ga.js" async="true"></script></head>
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
									<li><a href="http://www.yeeyan.org/login">登录</a></li>
					<li style="padding-right:5px;"><a href="./../common/译言网   注册.html">注册</a></li>
								</ul> 
			</div>
		</div>
		<div class="bottom">
			<div class="content clearfix">
				<ul class="menu clearfix">
					<li id="ysite" class="active"><a href="http://www.yeeyan.org/">首页</a></li>
					<li id="ygroup"><a href="http://group.yeeyan.org/">小组</a></li>
					<li id="yarticle"><a href="http://article.yeeyan.org/">译文库</a></li>
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
-->
<style>
.bottom{display:none;}
#inner{margin:0 auto;width:220px;}
#right div.slogan{color:#BBBBBB;font-size:18px;line-height:1.6;padding-top:20px;}
#right div.indent-2{padding:40px 0 0 120px;}
.y_login{border-radius:5px 5px 5px 5px;width:800px;background:#fff;border:1px solid #F2F2F2;box-shadow:0 2px 3px #AAAAAA;color:#434343;margin:20px auto 40px;padding:40px 0;}
.y_login_l{border-right:1px solid #D8D8D8;float:left;padding-left:80px;width:360px;}
.y_login_r{float:left;padding:0 60px 0 20px;text-align:center;width:279px;}
</style>

<script>
function register(){
	var email=$("#email").val();
    if(email.indexOf('mail.bccto.me')>0){
            return false;
    }
	var password=$("#password").val();
	var show_name=$("#show_name").val();
	var backurl=$("#backurl").val();

	var show_namereg = /^[_0-9a-zA-Z\u4e00-\u9fa5]{2,20}$/;
	if(!show_namereg.test(show_name) ){
			$("#error").html('<span style="color:red;">昵称2-20位英文或汉字</span>');
			setTimeout(function(){ $("#error").html('');},2000);
			return false;
	}
	var emailreg = (/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/);
	if(email!='' && !emailreg.test(email) ){
			$("#error").html('<span  style="color:red;">邮箱格式错误</span>');
			setTimeout(function(){ $("#error").html('');},2000);
			return false;
	}
	if( password.length<6 ||  password.length>20){   
			$("#error").html('<span  style="color:red;">密码6-20位字母数字符号</span>');
			setTimeout(function(){ $("#error").html('');},2000);
			return false;
	}
	document.getElementById('btn').onclick=function(){ return false;}

	$.post("/register", { email: email, password: password, show_name: show_name,backurl: backurl} ,function(data){ 
		 var result = eval("("+data+")"); 
		if(result.result=='show_name'){
			document.getElementById('btn').onclick=function(){ register();}
			$("#error").html('<span  style="color:red;">昵称已经被人注册</span>');
			setTimeout(function(){ $("#error").html('');},2000);
		}else if(result.result=='email'){
			document.getElementById('btn').onclick=function(){ register();}
			$("#error").html('<span  style="color:red;">邮箱已经被人注册</span>');
			setTimeout(function(){ $("#error").html('');},2000);
		}else if(result.result=='success'){
			$("#error").html('<span  >注册完成，请接收邮件激活账号，注意垃圾信箱</span>');
		}else{
			document.getElementById('btn').onclick=function(){ register();}
			$("#error").html('<span   style="color:red;">提交失败</span>');
			setTimeout(function(){ $("#error").html('');},2000);
		}
	});
}
function set_func(obj){
	if(obj.checked){
		document.getElementById('btn').onclick=function(){ register();}
		document.getElementById('btn').style.cursor='pointer';
		document.getElementById('btn').className='btn blue_btn';
	}else{
		document.getElementById('btn').onclick=function(){  return false;}
		document.getElementById('btn').style.cursor='default';
		document.getElementById('btn').className='btn';
	}
}
</script>
<div class="y_wrapper">
		<div class="y_login clearfix">
			<div class="y_login_l">
					<input type="hidden" id="backurl" value="">
					<p class="focus"><input class="y_login_nickname" type="text" value="" id="show_name" placeholder="昵称"><b>5-20个字符，中英文都可。</b></p>
					<p class="focus"><input class="y_login_email" type="text" value="" id="email" placeholder="邮箱"></p>
					<p class="focus passcode"><input class="y_login_passcode" type="password" value="" id="password" placeholder="密码"></p>
					<p class="y_blue"><input type="checkbox" onclick="set_func(this);"> <span>我已认真阅读并同意 <a href="javascript:void(0)" onclick="window.open(&#39;/agreement&#39;,&#39;agreement&#39;, &#39;width=900,height=600,toolbar=0,menubar=0,location=0,status=1,scrollbars=1,resizable=1,left=100,top=100&#39;);" class="nodecoration">《译言用户协议》</a></span></p>
					<p><input class="btn" type="button" style="cursor:default;" value="注册" id="btn"></p> 
                    <p class="y_blue" style="text-align:right;padding-right:70px;"><span><a href="http://www.yeeyan.org/reactive">重新发送激活邮件</a></span></p>
					<p class="y_blue" style="height:12px;" id="error"></p>
			</div>
			<div class="y_login_r">
				<div id="right">
					<div id="inner">
							<div class="slogan">用语言打开一个世界<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A Language, A World
								<div class="indent-2">
									<span><a href="http://www.yeeyan.org/login" class="nodecoration">立即登录</a></span><span class="small-icon" id="double-right-arrows-icon" style="float:right;margin:4px 0 0 4px;"></span>
								</div>
							</div>
					</div>
				</div>
			</div>
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
             
                <!-- www.yeeyan.org -->
                <li><a target="_blank" href="http://www.yeeyan.org/main/index">旧版回顾</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a target="_blank" href="http://e.weibo.com/yeeyan">官方微博</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="http://www.yeeyan.org/rss">RSS 订阅</a> &nbsp;&nbsp;|&nbsp;&nbsp; <a href="http://www.yeeyan.org/aboutus">关于我们</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="http://www.yeeyan.org/joinus">加入我们</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="http://www.yeeyan.org/contactus">联系我们</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="http://www.yeeyan.org/suggest">意见反馈</a></li>
    			<style>#anquanbtn a{margin-top: 10px;position: absolute;right: 0;}</style>
                <li id="anquanbtn"><script src="./../common/anquan_authen_83x30.js"></script><a href="http://www.anquan.org/authenticate/cert/?site=www.yeeyan.org&at=realname" logo_size="83x30" logo_type="realname" target="_blank"><script src="./../common/aq_auth.js"></script><span style="display:none;" class="LOGO_aq_jsonp_wrap_" id="AQ_logo_span_init_1"><script src="./../common/saved_resource" type="text/javascript" async="true"></script></span><img src="./../common/sm_83x30_gray.png" alt="安全联盟认证" width="83" height="30" style="border: none;"></a></li>
                    </ul>
	</div>
</body></html>