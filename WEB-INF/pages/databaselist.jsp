<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<base href="<%=basePath%>">
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="Sentir, Responsive admin and dashboard UI kits template">
		<meta name="keywords" content="admin,bootstrap,template,responsive admin,dashboard template,web apps template">
		<meta name="author" content="Ari Rusmanto, Isoh Design Studio, Warung Themes">
		<title>我的数据库</title>
 
		<!-- BOOTSTRAP CSS (REQUIRED ALL PAGE)-->
		<link href="assets/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- PLUGINS CSS -->
		<link href="assets/plugins/weather-icon/css/weather-icons.min.css" rel="stylesheet">
		<link href="assets/plugins/prettify/prettify.min.css" rel="stylesheet">
		<link href="assets/plugins/magnific-popup/magnific-popup.min.css" rel="stylesheet">
		<link href="assets/plugins/owl-carousel/owl.carousel.min.css" rel="stylesheet">
		<link href="assets/plugins/owl-carousel/owl.theme.min.css" rel="stylesheet">
		<link href="assets/plugins/owl-carousel/owl.transitions.min.css" rel="stylesheet">
		<link href="assets/plugins/chosen/chosen.min.css" rel="stylesheet">
		<link href="assets/plugins/icheck/skins/all.css" rel="stylesheet">
		<link href="assets/plugins/datepicker/datepicker.min.css" rel="stylesheet">
		<link href="assets/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
		<link href="assets/plugins/validator/bootstrapValidator.min.css" rel="stylesheet">
		<link href="assets/plugins/summernote/summernote.min.css" rel="stylesheet">
		<link href="assets/plugins/markdown/bootstrap-markdown.min.css" rel="stylesheet">
		<link href="assets/plugins/datatable/css/bootstrap.datatable.min.css" rel="stylesheet">
		<link href="assets/plugins/morris-chart/morris.min.css" rel="stylesheet">
		<link href="assets/plugins/c3-chart/c3.min.css" rel="stylesheet">
		<link href="assets/plugins/slider/slider.min.css" rel="stylesheet">
		<link href="assets/plugins/salvattore/salvattore.css" rel="stylesheet">
		<link href="assets/plugins/toastr/toastr.css" rel="stylesheet">
		<link href="assets/plugins/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet">
		<link href="assets/plugins/fullcalendar/fullcalendar/fullcalendar.print.css" rel="stylesheet" media="print">
		
		<!-- MAIN CSS (REQUIRED ALL PAGE)-->
		<link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
		<link href="assets/css/style.css" rel="stylesheet">
		<link href="assets/css/style-responsive.css" rel="stylesheet">


		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
	</head>
 
	<body class="tooltips">
		<!--
		===========================================================
		BEGIN PAGE
		===========================================================
		-->
		<div class="wrapper">
			<!-- BEGIN TOP NAV -->
			<div class="top-navbar">
				<div class="top-navbar-inner">
					
					<!-- Begin Logo brand -->
					<div class="logo-brand">
						<a href="index.html"><img src="assets/img/sentir-logo-primary.png" alt="Sentir logo"></a>
					</div><!-- /.logo-brand -->
					<!-- End Logo brand -->
					
					<div class="top-nav-content">
						
						<!-- Begin button sidebar left toggle -->
						<div class="btn-collapse-sidebar-left">
							
						</div><!-- /.btn-collapse-sidebar-left -->
						<!-- End button sidebar left toggle -->
						
						<!-- Begin user session nav -->
						<ul class="nav-user navbar-right">
							<li class="dropdown">
							  <a href="#fakelink" class="dropdown-toggle" data-toggle="dropdown">
								欢迎, <strong><s:property value="#session.username"/></strong>
							  </a>
							  <ul class="dropdown-menu square primary margin-list-rounded with-triangle">
								<li><a href="userinfo">个人资料</a></li>
								<li class="divider"></li>
								<li><a href="logout">退出</a></li>
							  </ul>
							</li>
						</ul>
						<!-- End user session nav -->
						
						<!-- Begin Collapse menu nav -->
						<div class="collapse navbar-collapse" id="main-fixed-nav" style="padding-left:0px;">
							<!-- Begin nav search form -->
							<form class="navbar-form navbar-left" role="search" style="width:300px;">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-search"></i></span>
									<input type="text" class="form-control" placeholder="Search">
								</div>
							</form>
							<!-- End nav search form -->
						</div><!-- /.navbar-collapse -->
						<!-- End Collapse menu nav -->
					</div><!-- /.top-nav-content -->
				</div><!-- /.top-navbar-inner -->
			</div><!-- /.top-navbar -->
			<!-- END TOP NAV -->
			
			
			
			<!-- BEGIN SIDEBAR LEFT -->
			<div class="sidebar-left sidebar-nicescroller">
				<ul class="sidebar-menu">
					<li>
						<a href="databases">
							<i class="fa fa-database"></i>&nbsp;&nbsp;&nbsp;&nbsp;数据库
						</a>
					</li>
					<li>
						<a href="userinfo">
							<i class="fa fa-user"></i>&nbsp;&nbsp;&nbsp;&nbsp;个人中心
						</a>
					</li>
				</ul>
			</div><!-- /.sidebar-left -->
			<!-- END SIDEBAR LEFT -->
			
			
			
			<!-- BEGIN SIDEBAR RIGHT HEADING -->
			<div class="sidebar-right-heading">
				<ul class="nav nav-tabs square nav-justified">
				  <li class="active"><a href="#online-user-sidebar" data-toggle="tab"><i class="fa fa-comments"></i></a></li>
				  <li><a href="#notification-sidebar" data-toggle="tab"><i class="fa fa-bell"></i></a></li>
				  <li><a href="#task-sidebar" data-toggle="tab"><i class="fa fa-tasks"></i></a></li>
				  <li><a href="#setting-sidebar" data-toggle="tab"><i class="fa fa-cogs"></i></a></li>
				</ul>
			</div><!-- /.sidebar-right-heading -->
			<!-- END SIDEBAR RIGHT HEADING -->
			
			
			<!-- BEGIN PAGE CONTENT -->
			<div class="page-content">

				<div class="container-fluid">
					<!-- Begin page heading -->
					<h1 class="page-heading">我的数据库</h1>
					<!-- End page heading -->
				
					<!-- Begin breadcrumb -->
					<ol class="breadcrumb default square rsaquo sm">
						<li><a href="index.html"><i class="fa fa-home"></i></a></li>
						<li><a href="databases">数据库列表</a></li>
					</ol>
					<!-- End breadcrumb -->

					<!-- Begin DatabaseList-->
					<div class="panel panel-primary">
					  	<div class="panel-heading">
							<h3 class="panel-title">数据库列表</h3>
					  	</div>
					  	<div class="panel-body">
					  		<div class="col-md-12">
					  			<button class="btn btn-info btn-rounded-lg" id="createDatabase">
					  				<i class="fa fa-plus"></i>新建数据库
					  			</button>
					  		</div>
					  		<div class="col-md-12" style="margin-top:12px;">
					  			<s:if test="#request.isDatabasesNull">
					  				<div class="row" id="nullInfo">
						  				<div class="col-md-3"></div>
						  				<div class="the-box bg-warning rounded col-md-6">
						  					<p class="text-center">您还没有数据库，点击左上方按钮创建!</p>
						  				</div>
						  				<div class="col-md-3"></div>
					  				</div>
					  				<div class="row hide" id="nullToHaveChange">
					  					<table id="databaseList" class="table table-striped " width="100%">
										<thead>
								            <tr>
								            	<th>ID</th>
								                <th>数据库名称</th>
								                <th>创建时间</th>
								                <th>类型</th>
								                <th>运行状态</th>
								                <th>操作</th>
								            </tr>
								        </thead>
										<tbody>										
											<s:iterator value="#request.databases">
												<tr>
									            	<td><s:property value="dbid"/></td>
									                <td><s:property value="dbname"/></td>
									                <td><s:property value="createtime"/></td>
									                <td><s:property value="dbtype"/></td>
									                <td>正常</td>
									                <td>
									                	<a href="database?dbid=<s:property value="dbid"/>">查看详细</a>
									                </td>
								            	</tr>
											</s:iterator>
								           
								        </tbody>
									</table>
					  				</div>	
					  			</s:if>
								<s:else>
									<table id="databaseList" class="table table-striped" width="100%">
										<thead>
								            <tr>
								            	<th>ID</th>
								                <th>数据库名称</th>
								                <th>创建时间</th>
								                <th>类型</th>
								                <th>运行状态</th>
								                <th>操作</th>
								            </tr>
								        </thead>
										<tbody>										
											<s:iterator value="#request.databases">
												<tr>
									            	<td><s:property value="dbid"/></td>
									                <td><s:property value="dbname"/></td>
									                <td><s:property value="createtime"/></td>
									                <td><s:property value="dbtype"/></td>
									                <td>正常</td>
									                <td>
									                	<a href="database?dbid=<s:property value="dbid"/>">查看详细</a>
									                </td>
								            	</tr>
											</s:iterator>
								           
								        </tbody>
									</table>
								</s:else>
							</div>
					  	</div>
					</div>
					<!-- Begin DatabaseList-->
					
				</div><!-- /.container-fluid -->
				
				<!-- BEGIN FOOTER -->
				<footer>
					&copy; 2014 <a href="#fakelink">Your company</a><br />
					Design by <a href="http://isohdesign.com" target="_blank">ids</a>. Purchase this item at <a href="http://goo.gl/wSCjxD" target="_blank">Themeforest</a>
				</footer>
				<!-- END FOOTER -->

			</div><!-- /.page-content -->
		</div><!-- /.wrapper -->
		<!-- END PAGE CONTENT -->
		
		
	
		<!-- BEGIN BACK TO TOP BUTTON -->
		<div id="back-top">
			<a href="#top"><i class="fa fa-chevron-up"></i></a>
		</div>
		<!-- END BACK TO TOP -->
		
		
		<!-- BEGIN ADD DB FORM -->
		<div class="modal fade" id="addDB" tabindex="-1" role="dialog" 
		   aria-labelledby="detailLab" aria-hidden="true">
		   <div class="modal-dialog" style="width:60%;min-width:510px;background-color:aliceblue;">
			      <div class="modal-content">
					 <div class="modal-header">
						<h3>创建数据库</h3>
					 </div>
			         <div class="modal-body">
						<form role="form" id="createDBForm">
				            <div class="form-group">
							      <label for="dbname">数据库名称</label>
							      <input type="text" class="form-control" id="dbname" name="dbname" placeholder="请输入服务器名称">
							      
							</div>
							<div class="form-group">
							      <label for="name">数据库类型</label>
							      <select class="form-control" name="dbtype" id="dbtype">
										<option value="mysql" selected="selected">mysql</option>
										<option value="mongodb">mongodb</option>		
								  </select>
							</div>
						</form>
			         </div>
		         	<div class="modal-footer">
			            <button type="button" class="btn btn-info" id="createDB">创建</button>
			         	<button type="button" class="btn btn-danger" data-dismiss="modal">关闭</button>
			         </div>
		      	</div><!-- /.modal-content -->
			</div><!-- /.modal -->
		</div>
		<!-- END ADD DB FORM -->
		
		
		
		<!--
		===========================================================
		END PAGE
		===========================================================
		-->
		
		<!--
		===========================================================
		Placed at the end of the document so the pages load faster
		===========================================================
		-->
		<!-- MAIN JAVASRCIPT (REQUIRED ALL PAGE)-->
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/plugins/retina/retina.min.js"></script>
		<script src="assets/plugins/nicescroll/jquery.nicescroll.js"></script>
		<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
		<script src="assets/plugins/backstretch/jquery.backstretch.min.js"></script>
 
		<!-- PLUGINS -->
		<script src="assets/plugins/skycons/skycons.js"></script>
		<script src="assets/plugins/prettify/prettify.js"></script>
		<script src="assets/plugins/magnific-popup/jquery.magnific-popup.min.js"></script>
		<script src="assets/plugins/owl-carousel/owl.carousel.min.js"></script>
		<script src="assets/plugins/chosen/chosen.jquery.min.js"></script>
		<script src="assets/plugins/icheck/icheck.min.js"></script>
		<script src="assets/plugins/datepicker/bootstrap-datepicker.js"></script>
		<script src="assets/plugins/timepicker/bootstrap-timepicker.js"></script>
		<script src="assets/plugins/mask/jquery.mask.min.js"></script>
		<script src="assets/plugins/validator/bootstrapValidator.min.js"></script>
		<script src="assets/plugins/datatable/js/jquery.dataTables.min.js"></script>
		<script src="assets/plugins/datatable/js/bootstrap.datatable.js"></script>
		<script src="assets/plugins/summernote/summernote.min.js"></script>
		<script src="assets/plugins/markdown/markdown.js"></script>
		<script src="assets/plugins/markdown/to-markdown.js"></script>
		<script src="assets/plugins/markdown/bootstrap-markdown.js"></script>
		<script src="assets/plugins/slider/bootstrap-slider.js"></script>
		
		<script src="assets/plugins/toastr/toastr.js"></script>
		
		<!-- FULL CALENDAR JS -->
		<script src="assets/plugins/fullcalendar/lib/jquery-ui.custom.min.js"></script>
		<script src="assets/plugins/fullcalendar/fullcalendar/fullcalendar.min.js"></script>
		<script src="assets/js/full-calendar.js"></script>
		
		<!-- EASY PIE CHART JS -->
		<script src="assets/plugins/easypie-chart/easypiechart.min.js"></script>
		<script src="assets/plugins/easypie-chart/jquery.easypiechart.min.js"></script>
		
		<!-- KNOB JS -->
		<!--[if IE]>
		<script type="text/javascript" src="assets/plugins/jquery-knob/excanvas.js"></script>
		<![endif]-->
		<script src="assets/plugins/jquery-knob/jquery.knob.js"></script>
		<script src="assets/plugins/jquery-knob/knob.js"></script>

		<!-- FLOT CHART JS -->
		<script src="assets/plugins/flot-chart/jquery.flot.js"></script>
		<script src="assets/plugins/flot-chart/jquery.flot.tooltip.js"></script>
		<script src="assets/plugins/flot-chart/jquery.flot.resize.js"></script>
		<script src="assets/plugins/flot-chart/jquery.flot.selection.js"></script>
		<script src="assets/plugins/flot-chart/jquery.flot.stack.js"></script>
		<script src="assets/plugins/flot-chart/jquery.flot.time.js"></script>

		<!-- MORRIS JS -->
		<script src="assets/plugins/morris-chart/raphael.min.js"></script>
		<script src="assets/plugins/morris-chart/morris.min.js"></script>
		
		<!-- C3 JS -->
		<script src="assets/plugins/c3-chart/d3.v3.min.js" charset="utf-8"></script>
		<script src="assets/plugins/c3-chart/c3.min.js"></script>
		
		<!-- MAIN APPS JS -->
		<script src="assets/js/apps.js"></script>
		<script src="assets/js/demo-panel.js"></script>
		<script src="assets/databaseAssets/js/databaselist.js"></script>
		
	</body>
</html>