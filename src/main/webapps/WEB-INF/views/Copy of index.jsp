<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../include/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<title>欢迎登录东莞盘子女人后台</title>
	<meta name="keywords" content=""/>
	<meta name="description" content=""/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
	
    <!-- bootstrap -->
    <link href="${ctx}/web-resource/css/bootstrap/bootstrap.css" rel="stylesheet" />

    <!-- libraries -->
    <link href="${ctx}/web-resource/css/lib/jquery-ui-1.10.2.custom.css" rel="stylesheet" type="text/css" />
    <link href="${ctx}/web-resource/css/lib/font-awesome.css" type="text/css" rel="stylesheet" />

    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="${ctx}/web-resource/css/compiled/layout.css">

    <!-- this page specific styles -->
    <link rel="stylesheet" href="${ctx}/web-resource/css/compiled/index.css" type="text/css" media="screen" />


    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>
    <!-- navbar -->
    <header class="navbar navbar-inverse" role="banner">
        <div class="navbar-header">
            <button class="navbar-toggle" type="button" data-toggle="collapse" id="menu-toggler">
                <span class="sr-only">切换视图</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">
            	东莞盘子女人后台管理系统
            	<!-- 这里是东莞盘子女人的品牌logo -->
            	<%-- <img src="${ctx}/web-resource/img/logo.png">--%>
            </a> 
        </div>
       <ul class="nav navbar-nav pull-right hidden-xs">
           <%--   <li class="hidden-xs hidden-sm">
                <input class="search" type="text" />
            </li>
            <li class="notification-dropdown hidden-xs hidden-sm">
                <a href="#" class="trigger">
                    <i class="icon-warning-sign"></i>
                    <span class="count">8</span>
                </a>
                <div class="pop-dialog">
                    <div class="pointer right">
                        <div class="arrow"></div>
                        <div class="arrow_border"></div>
                    </div>
                    <div class="body">
                        <a href="#" class="close-icon"><i class="icon-remove-sign"></i></a>
                        <div class="notifications">
                            <h3>你有6条信息</h3>
                            <a href="#" class="item">
                                <i class="icon-signin"></i> 新用户注册
                                <span class="time"><i class="icon-time"></i> 13分钟前.</span>
                            </a>
                            <a href="#" class="item">
                                <i class="icon-signin"></i> 新用户注册
                                <span class="time"><i class="icon-time"></i> 18分钟前.</span>
                            </a>
                            <a href="#" class="item">
                                <i class="icon-envelope-alt"></i> 新消息来自Alejandra
                                <span class="time"><i class="icon-time"></i> 28分钟前.</span>
                            </a>
                            <a href="#" class="item">
                                <i class="icon-signin"></i> 新用户注册
                                <span class="time"><i class="icon-time"></i> 49分钟前.</span>
                            </a>
                            <a href="#" class="item">
                                <i class="icon-download-alt"></i> 新订单
                                <span class="time"><i class="icon-time"></i> 1天前.</span>
                            </a>
                            <div class="footer">
                                <a href="#" class="logout">查看所有消息</a>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
            <li class="notification-dropdown hidden-xs hidden-sm">
                <a href="#" class="trigger">
                    <i class="icon-envelope"></i>
                </a>
                <div class="pop-dialog">
                    <div class="pointer right">
                        <div class="arrow"></div>
                        <div class="arrow_border"></div>
                    </div>
                    <div class="body">
                        <a href="#" class="close-icon"><i class="icon-remove-sign"></i></a>
                        <div class="messages">
                            <a href="#" class="item">
                                <img src="${ctx}/web-resource/img/contact-img.png" class="display" />
                                <div class="name">DEMO</div>
                                <div class="msg">
                                    回家来吃饭了.
                                </div>
                                <span class="time"><i class="icon-time"></i> 13分钟前.</span>
                            </a>
                            <a href="#" class="item">
                                <img src="${ctx}/web-resource/img/contact-img2.png" class="display" />
                                <div class="name">Galván</div>
                                <div class="msg">
                                    照片很不错哦.
                                </div>
                                <span class="time"><i class="icon-time"></i> 26分钟前.</span>
                            </a>
                            <a href="#" class="item last">
                                <img src="${ctx}/web-resource/img/contact-img.png" class="display" />
                                <div class="name">后台</div>
                                <div class="msg">
                                   模版很不错赶紧下载.
                                </div>
                                <span class="time"><i class="icon-time"></i> 48分钟前.</span>
                            </a>
                            <div class="footer">
                                <a href="#" class="logout">查看所有消息</a>
                            </div>
                        </div>
                    </div>
                </div>
            </li> --%>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle hidden-xs hidden-sm" data-toggle="dropdown">
                 		${backSession.username}
                    <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="${ctx}/personal-info.html">个人信息</a></li>
                    <li><a href="${ctx}/admin/logout.html">退出</a></li>
                </ul>
            </li>
            <li class="settings hidden-xs hidden-sm">
                <a href="personal-info.html" role="button">
                    <i class="icon-cog"></i>
                </a>
            </li>
            <li class="settings hidden-xs hidden-sm">
                <a href="signin.html" role="button">
                    <i class="icon-share-alt"></i>
                </a>
            </li>
        </ul>
    </header>
    <!-- end navbar -->

    <!-- sidebar -->
    <div id="sidebar-nav">
        <ul id="dashboard-menu">
            <li class="active">
                <div class="pointer">
                    <div class="arrow"></div>
                    <div class="arrow_border"></div>
                </div>
                <a href="index.html">
                    <i class="icon-home"></i>
                    <span>管理首页</span>
                </a>
            </li>            
            <li>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-group"></i>
                    <span>常用操作</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu">
                    <li><a href="user-list.html">添加文章</a></li>
                    <li><a href="new-user.html">网站栏目管理</a></li>
                    <li><a href="user-profile.html">所有档案列表</a></li>
                    <li><a href="user-profile.html">评论管理</a></li>
                    <li><a href="user-profile.html">内容回收站</a></li>
                </ul>
            </li>
            <li>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-edit"></i>
                    <span>附件管理</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu">
                    <li><a href="form-showcase.html">上传新文件</a></li>
                    <li><a href="form-wizard.html">附件数据管理</a></li>
                    <li><a href="form-wizard.html">文件管理器</a></li>
                </ul>
            </li>
            <li>
                <a class="dropdown-toggle ui-elements" href="#">
                    <i class="icon-code-fork"></i>
                    <span>会员管理</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu">
                    <li><a href="ui-elements.html">注册会员列表</a></li>
                </ul>
            </li>
            <li>
                <a href="personal-info.html">
                    <i class="icon-cog"></i>
                    <span>我的信息</span>
                </a>
            </li>
            <li>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-share-alt"></i>
                    <span>版本信息</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu">
                    <li><a href="code-editor.html">关于我们</a></li>
                </ul>
            </li>
        </ul>
    </div>
    <!-- end sidebar -->


	<!-- main container -->
    <div class="content">

        <div id="pad-wrapper">

            <!-- table sample -->
            <!-- the script for the toggle all checkboxes from header is located in js/theme.js -->
            <div class="table-products section">
                <div class="row head">
                    <div class="col-md-12">
                        <h4>网站栏目管理 <small>栏目列表</small></h4>
                    </div>
                </div>

                <div class="row filter-block">
                    <div class="col-md-8 col-md-offset-5">
                        <div class="ui-select">
                            <select>
                              <option>过滤条件</option>
                              <option>最近三十天</option>
                              <option>最近一周</option>
                            </select>
                        </div>
                        <input type="text" class="search">
                        <a class="btn-flat new-product">增加顶级栏目</a>
                    </div>
                </div>

                <div class="row">
                    <table class="table table-bordered table-striped table_vamen" id="keyword">
                        <thead>
                            <tr>
                                <th class="col-md-9">
                                    <input type="checkbox">标题
                                </th>
                                 <th class="col-md-1">
                                    <span class="line"></span>操作
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- row -->
                            <%-- <c:forEach var ="allParentMenus" items="${allParentMenus}" varStatus="state">
	                            <tr class="first">
	                                <td>
	                                    <input type="checkbox">
	                                    <div class="img">
	                                        <img src="${ctx}/web-resource/img/table-img.png">
	                                    </div>
	                                    <a href="#">${allParentMenus.name}</a>
	                                </td>
	                                <td>
	                                    <ul class="actions">
	                                        <li><i class="table-edit"></i></span></li>
	                                        <li><i class="table-settings"></i></li>
	                                        <li class="last"><i class="table-delete"></i></li>
	                                    </ul>
	                                </td>
	                            </tr>
                            </c:forEach> --%>
                            <!-- row -->
                        </tbody>
                    </table>
                </div>
            </div>
            <!-- end table sample -->
        </div>
    </div>


	<!-- scripts -->
    <script src="${ctx}/web-resource/js/jquery-1.8.2.min.js"></script>
    <script src="${ctx}/web-resource/js/bootstrap.min.js"></script>
    <script src="${ctx}/web-resource/js/theme.js"></script>
    <script>
		$(document).ready(function() {
				$('#keyword').dataTable({
					sDom: "<'row'<'span6'<'dt_actions'>l><'span6'f>r>t<'row'<'span6'i><'span6'p>>",
					bFilter: false,
					sPaginationType: "bootstrap",  
					bProcessing: true,
					bServerSide: true,
					sAjaxSource: "${ctx}/admin/menu/index.html",
					sServerMethod: "POST",
					iDisplayLength: 10,
					fnServerData: function (sSource, aoData, fnCallback) {
						aoData.push({name:"userId",value:"${address.userId}"});
						$.ajax({
							"dataType": "json",
							"type": "POST",
							"url": sSource,
							"data": aoData,
							"success": fnCallback
						});
					},
					aoColumnDefs: [
				    ],
				    aoColumns: [
                        { sName:"name", mDataProp: "name", sDefaultContent:""},
                        { sName:"",
                          bSortable: false ,
                          mData: null, 
                          fnRender:function(oObj){
	                          var id = oObj.aData['id'];
						      url = "<a href=\"javascript:if(confirm('确认删除？'))window.location.href='${ctx}/role/dele.html?id="+ id + "'\">[删除]</a>";
	                          return url;
                          }
                        } 
                    ],
				    oLanguage:{
				    	sProcessing: "正在加载中......",
				    	sLengthMenu: "每页显示 _MENU_ 条记录",
				    	sZeroRecords: "对不起，查询不到相关数据！",
                    	sEmptyTable: "表中无数据存在！",
                    	sInfo: "当前显示 _START_ 到 _END_ 条，共 _TOTAL_ 条记录",
                    	sInfoFiltered: "数据表中共为 _MAX_ 条记录"
				    }
				});
				$('.dt_actions').html($('.dt_gal_actions').html());
			});
		</script>
	</body>
</html>
