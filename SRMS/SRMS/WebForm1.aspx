﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="SRMS.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
	<!-- start: Meta -->
	<meta charset="utf-8">
	<title>Bootstrap Metro Dashboard by Dennis Ji for ARM demo</title>
	<meta name="description" content="Bootstrap Metro Dashboard">
	<meta name="author" content="Dennis Ji">
	<meta name="keyword" content="Metro, Metro UI, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
	<!-- end: Meta -->
	
	<!-- start: Mobile Specific -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- end: Mobile Specific -->
	
	<!-- start: CSS -->
	<link  href="css2/bootstrap.min.css" rel="stylesheet">
	<link href="css2/bootstrap-responsive.min.css" rel="stylesheet">
	<link  href="css2/style.css" rel="stylesheet">
	<link  href="css2/style-responsive.css" rel="stylesheet">
	<!-- end: CSS -->
	

	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<link  href="css2/ie.css" rel="stylesheet">
	<![endif]-->
	
	<!--[if IE 9]>
		<link  href="css2/ie9.css" rel="stylesheet">
	<![endif]-->
		
	<!-- start: Favicon -->
	<link rel="shortcut icon" href="img/favicon.ico">
	<!-- end: Favicon -->
	
</head>
<body>
    <form id="form1" runat="server">
   	<!-- start: Header -->
	<div class="navbar">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<a class="brand" href="index.html"><span>Metro</span></a>
								
				<!-- start: Header Menu -->
				<div class="nav-no-collapse header-nav">
					<ul class="nav pull-right">
					  <!-- start: Notifications Dropdown --><!-- end: Notifications Dropdown -->
						<!-- start: Message Dropdown --><!-- end: Message Dropdown -->
						<li>
							<a class="btn" href="#">
								<i class="halflings-icon white wrench"></i>
							</a>
						</li>
						<!-- start: User Dropdown -->
						<li class="dropdown">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i ><img src="images/people.png" width="24dp" height="20dp"/> </i> 黄埔
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								<li class="dropdown-menu-title">
 									<span>账户设置</span>
								</li>
								<li><a href="#"><i ><img src="images/people3.png" width="24dp" heighth="35dp" /></i> 个人资料</a></li>
								<li><a href="login.html"><i ><img src="images/logout2.png" width="24dp" heighth="35dp" /></i> 退出登录</a></li>
							</ul>
						</li>
						<!-- end: User Dropdown -->
					</ul>
				</div>
				<!-- end: Header Menu -->
				
			</div>
		</div>
	</div>
	<!-- start: Header -->
	
		<div class="container-fluid-full">
		<div class="row-fluid">
				
			<!-- start: Main Menu -->
			<div id="sidebar-left" class="span2">
				<div class="nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
						<li><a href="index.html"><i class="icon-bar-chart"></i><span class="hidden-tablet"> 项目公告</span></a></li>	
						<li></li>
						<li><a href="tasks.html"><i class="icon-tasks"></i><span class="hidden-tablet"> 个人资料</span></a></li>
						<li><a href="calendar.html"><i class="icon-calendar"></i><span class="hidden-tablet"> 在研项目</span></a></li>
						<li><a href="file-manager.html"><i class="icon-folder-open"></i><span class="hidden-tablet"> 我的成果</span></a></li>
						<li></li>
						<li><a href="login.html"><i class="icon-lock"></i><span class="hidden-tablet"> 退出登录</span></a></li>
					</ul>
				</div>
			</div>
			<!-- end: Main Menu -->
			
			<noscript>
				<div class="alert alert-block span10">
					<h4 class="alert-heading">Warning!</h4>
					<p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
				</div>
			</noscript>
			
			<!-- start: Content -->
			<div id="content" class="span10">
			
			
			<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
					<a href="index.html">主页</a> 
					<i class="icon-angle-right"></i>
				</li>
				<li><a href="#">项目公告</a></li>
				
				
			</ul>

			<div class="row-fluid"></div>		

			<div class="row-fluid"></div>
			
			<div class="row-fluid hideInIE8 circleStats">
				
				<div class="span2" onTablet="span4" onDesktop="span2"></div>

				<div class="span2" onTablet="span4" onDesktop="span2"></div>
			</div>		
						
			<div class="row-fluid"><!--/span--></div>
			<div class="row-fluid">
			  <div class="clearfix"></div>
								
			</div><!--/row-->
			
       

	</div><!--/.fluid-container-->
	
			<!-- end: Content -->
		</div><!--/#content.span10-->
		</div><!--/fluid-row-->
		
	<div class="modal hide fade" id="myModal">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<h3>Settings</h3>
		</div>
		<div class="modal-body">
			<p>Here settings can be configured...</p>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn" data-dismiss="modal">Close</a>
			<a href="#" class="btn btn-primary">Save changes</a>
		</div>
	</div>
	
	<div class="clearfix"></div>
	
	<footer>

		<p>
			<span style="text-align:left;float:left">&copy; 2013 <a href="http://jiji262.github.io/Bootstrap_Metro_Dashboard/" alt="Bootstrap_Metro_Dashboard">Bootstrap Metro Dashboard</a></span>
			
		</p>

	</footer>
	
	<!-- start: JavaScript-->

		<script src="js2/jquery-1.9.1.min.js"></script>
	<script src="js2/jquery-migrate-1.0.0.min.js"></script>
	
		<script src="js2/jquery-ui-1.10.0.custom.min.js"></script>
	
		<script src="js2/jquery.ui.touch-punch.js"></script>
	
		<script src="js2/modernizr.js"></script>
	
		<script src="js2/bootstrap.min.js"></script>
	
		<script src="js2/jquery.cookie.js"></script>
	
		<script src='js2/fullcalendar.min.js'></script>
	
		<script src='js2/jquery.dataTables.min.js'></script>

		<script src="js2/excanvas.js"></script>
	<script src="js2/jquery.flot.js"></script>
	<script src="js2/jquery.flot.pie.js"></script>
	<script src="js2/jquery.flot.stack.js"></script>
	<script src="js2/jquery.flot.resize.min.js"></script>
	
		<script src="js2/jquery.chosen.min.js"></script>
	
		<script src="js2/jquery.uniform.min.js"></script>
		
		<script src="js2/jquery.cleditor.min.js"></script>
	
		<script src="js2/jquery.noty.js"></script>
	
		<script src="js2/jquery.elfinder.min.js"></script>
	
		<script src="js2/jquery.raty.min.js"></script>
	
		<script src="js2/jquery.iphone.toggle.js"></script>
	
		<script src="js2/jquery.uploadify-3.1.min.js"></script>
	
		<script src="js2/jquery.gritter.min.js"></script>
	
		<script src="js2/jquery.imagesloaded.js"></script>
	
		<script src="js2/jquery.masonry.min.js"></script>
	
		<script src="js2/jquery.knob.modified.js"></script>
	
		<script src="js2/jquery.sparkline.min.js"></script>
	
		<script src="js2/counter.js"></script>
	
		<script src="js2/retina.js"></script>

		<script src="js2/custom.js"></script>
	<!-- end: JavaScript-->
    </form>
</body>
</html>