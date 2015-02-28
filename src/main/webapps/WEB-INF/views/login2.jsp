<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../include/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	</head>
		<title>盘子女人后台登录</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
    <!-- bootstrap -->
    <link href="${ctx}/webresource/css/bootstrap/bootstrap.css" rel="stylesheet">
    <link href="${ctx}/webresource/css/bootstrap/bootstrap-responsive.css" rel="stylesheet">
    <link href="${ctx}/webresource/css/bootstrap/bootstrap-overrides.css" type="text/css" rel="stylesheet">

    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="${ctx}/webresource/css/compiled/layout.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/webresource/css/compiled/elements.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/webresource/css/compiled/icons.css">

    <!-- libraries -->
    <link rel="stylesheet" type="text/css" href="${ctx}/webresource/css/lib/font-awesome.css">
    
    <!-- this page specific styles -->
    <link rel="stylesheet" href="${ctx}/webresource/css/compiled/signup.css" type="text/css" media="screen" />


    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>
    <div class="header">
        <a href="index.html">
            <img src="${ctx}/webresource/img/logo.png" class="logo" />
        </a>
    </div>
    <div class="login-wrapper">
        <div class="box">
            <div class="content-wrap">
                <h6>Sign Up</h6>
                <input class="form-control" type="text" placeholder="E-mail address">
                <input class="form-control" type="password" placeholder="Password">
                <input class="form-control" type="password" placeholder="Confirm Password">
                <div class="action">
                    <a class="btn-glow primary signup" href="index.html">Sign up</a>
                </div>                
            </div>
        </div>

        <div class="already">
            <p>Already have an account?</p>
            <a href="signin.html">Sign in</a>
        </div>
    </div>

	<!-- scripts -->
    <script src="${ctx}/webresource/js/jquery-1.8.2.min.js"></script>
    <script src="${ctx}/webresource/js/bootstrap.min.js"></script>
    <script src="${ctx}/webresource/js/theme.js"></script>
	</body>
</html>
