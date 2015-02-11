<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../include/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<title>盘子女人后台登录</title>
	<meta name="keywords" content=" " />
	<meta name="description" content=""/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
    <!-- bootstrap -->
    <link href="${ctx}/web-resource/css/bootstrap/bootstrap.css" rel="stylesheet">
    <link href="${ctx}/web-resource/css/bootstrap/bootstrap-overrides.css" type="text/css" rel="stylesheet">

    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="${ctx}/web-resource/css/compiled/layout.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/web-resource/css/compiled/elements.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/web-resource/css/compiled/icons.css">

    <!-- this page specific styles -->
    <link rel="stylesheet" href="${ctx}/web-resource/css/compiled/signin.css" type="text/css" media="screen" />


    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>


    <!-- background switcher -->
    <div class="bg-switch visible-desktop">
        <div class="bgs">
            <a href="#" data-img="${ctx}/web-resource/img/bgs/7.jpg" class="bg">
                <img src="${ctx}/web-resource/img/bgs/7.jpg" />
            </a>
            <a href="#" data-img="${ctx}/web-resource/img/bgs/8.jpg" class="bg">
                <img src="${ctx}/web-resource/img/bgs/8.jpg" />
            </a>
            <a href="#" data-img="${ctx}/web-resource/img/bgs/9.jpg" class="bg">
                <img src="${ctx}/web-resource/img/bgs/9.jpg" />
            </a>
            <a href="#" data-img="${ctx}/web-resource/img/bgs/10.jpg" class="bg">
                <img src="${ctx}/web-resource/img/bgs/10.jpg" />
            </a>
            <a href="#" data-img="${ctx}/web-resource/img/bgs/11.jpg" class="bg">
                <img src="${ctx}/web-resource/img/bgs/11.jpg" />
            </a>
        </div>
    </div>


    <div class="login-wrapper">
        <a href="${ctx}/index.html">
            <img class="logo" src="${ctx}/web-resource/img/logo-white.png">
        </a>

	<form id="loginForm" method="post" action="${ctx}/admin/loginValidate.html">
        <div class="box">
            <div class="content-wrap">
                <h6>登录</h6>
                <input class="form-control" type="text" name="username" placeholder="用户名">
                <input class="form-control" type="password" name="password" placeholder="密码">
                <a href="#" class="forgot">忘记密码?</a>
                <div class="remember">
                    <input id="remember-me" type="checkbox">
                    <label for="remember-me">记住密码</label>
                </div>
                <a class="btn-glow primary login" href="javascript:;" onclick="submitLogin();">登录</a>
            </div>
        </div>
	</form>
        <div class="no-account">
            <p>还没账号?</p>
            <a href="signup.html">注册</a>
        </div>
    </div>

	<!-- scripts -->
    <script src="${ctx}/web-resource/js/jquery-1.8.2.min.js"></script>
    <script src="${ctx}/web-resource/js/bootstrap.min.js"></script>
    <script src="${ctx}/web-resource/js/theme.js"></script>

    <!-- pre load bg imgs -->
    <script type="text/javascript">
        $(function () {
        	 /* $("html").css("background-image", "url(${ctx}/web-resource/img/bgs/11.jpg)"); */
            var $btns = $(".bg-switch .bg");
            $btns.click(function (e) {
                e.preventDefault();
                $btns.removeClass("active");
                $(this).addClass("active");
                var bg = $(this).data("img");
                $("html").css("background-image", "url('" + bg + "')");
            });

        });
        
        //登录
        function submitLogin(){
        	var userName = $("input[name='username']").val();
        	var userPwd = $("input[name='password']").val();
        	if(userName==''){
        		$("input[name='username']").attr("placeholder","用户名不能为空").css("border-color","red");
        		return;
        	}
        	if(userPwd==''){
        		$("input[name='password']").attr("placeholder","密码不能为空").css("border-color","red");
        		return;
        	}
        	//submit
        	$("#loginForm").submit();
        }
    </script>
	</body>
</html>
