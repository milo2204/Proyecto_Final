
<%@ page import="WebService.RespuestaActividad" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!-- Meta, title, CSS, favicons, etc. -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<title>KCLE </title>

		<!-- Bootstrap -->
		<link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
		<!-- Font Awesome -->
		<link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
		<!-- NProgress -->
		<link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
		<!-- iCheck -->
		<link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet">

		<!-- Custom Theme Style -->
		<link href="../build/css/custom.min.css" rel="stylesheet">

		<!-- Bootstrap -->
		<link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
		<!-- Font Awesome -->
		<link href="${resource(dir: 'css', file: 'font-awesome.min.css')}" rel="stylesheet">
		<!-- NProgress -->
		<link href="${resource(dir: 'css' , file: 'nprogress.css')}" rel="stylesheet">

		<!-- iCheck -->
		<link href="${resource(dir: 'css' , file: 'green.css')}" rel="stylesheet">

		<!-- Custom Theme Style -->
		<link href="${resource(dir: 'css', file: 'custom.min.css' )}" rel="stylesheet">
	</head>
	<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<div class="navbar nav_title" style="border: 0;">
						<a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>KCLE</span></a>
					</div>

					<div class="clearfix"></div>

					<!-- menu profile quick info -->
					<div class="profile">
						<div class="profile_pic">
							<img src="images/img.jpg" alt="..." class="img-circle profile_img">
						</div>
						<div class="profile_info">
							<span>Bienvenidos,</span>
							<h2>Admin</h2>
						</div>
					</div>
					<!-- /menu profile quick info -->

					<br />

					<!-- sidebar menu -->
					<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
						<div class="menu_section">
							<h3>General</h3>
							<ul class="nav side-menu">
								<li><a><i class="fa fa-home"></i> General <span class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="${createLink(uri: '/')}">Inicio</a></li>
										<li><a href="#">Juegos</a></li>
										<li><a href="#">Categorias</a></li>
										<li><a href="#">Actividades</a></li>
										<li><a href="${resource(dir: 'respuestaActividad', file: 'index')}">Respuestas Actividades</a></li>
									</ul>
								</li>
							</ul>
						</div>
					</div>
					<!-- /sidebar menu -->

					<!-- /menu footer buttons -->
					<div class="sidebar-footer hidden-small">
						<a data-toggle="tooltip" data-placement="top" title="Settings">
							<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
						</a>
						<a data-toggle="tooltip" data-placement="top" title="FullScreen">
							<span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
						</a>
						<a data-toggle="tooltip" data-placement="top" title="Lock">
							<span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
						</a>
						<a data-toggle="tooltip" data-placement="top" title="Logout">
							<span class="glyphicon glyphicon-off" aria-hidden="true"></span>
						</a>
					</div>
					<!-- /menu footer buttons -->
				</div>
			</div>

			<!-- top navigation -->
			<div class="top_nav">
				<div class="nav_menu">
					<nav>
						<div class="nav toggle">
							<a id="menu_toggle"><i class="fa fa-bars"></i></a>
						</div>

						<ul class="nav navbar-nav navbar-right">
							<li class="">
								<a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
									<img src="images/img.jpg" alt="">John Doe
									<span class=" fa fa-angle-down"></span>
								</a>
								<ul class="dropdown-menu dropdown-usermenu pull-right">
									<li><a href="javascript:;"> Profile</a></li>
									<li>
										<a href="javascript:;">
											<span class="badge bg-red pull-right">50%</span>
											<span>Settings</span>
										</a>
									</li>
									<li><a href="javascript:;">Help</a></li>
									<li><a href="login.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
								</ul>
							</li>

							<li role="presentation" class="dropdown">
								<a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
									<i class="fa fa-envelope-o"></i>
									<span class="badge bg-green">6</span>
								</a>
								<ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
									<li>
										<a>
											<span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
											<span>
												<span>John Smith</span>
												<span class="time">3 mins ago</span>
											</span>
											<span class="message">
												Film festivals used to be do-or-die moments for movie makers. They were where...
											</span>
										</a>
									</li>
									<li>
										<a>
											<span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
											<span>
												<span>John Smith</span>
												<span class="time">3 mins ago</span>
											</span>
											<span class="message">
												Film festivals used to be do-or-die moments for movie makers. They were where...
											</span>
										</a>
									</li>
									<li>
										<a>
											<span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
											<span>
												<span>John Smith</span>
												<span class="time">3 mins ago</span>
											</span>
											<span class="message">
												Film festivals used to be do-or-die moments for movie makers. They were where...
											</span>
										</a>
									</li>
									<li>
										<a>
											<span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
											<span>
												<span>John Smith</span>
												<span class="time">3 mins ago</span>
											</span>
											<span class="message">
												Film festivals used to be do-or-die moments for movie makers. They were where...
											</span>
										</a>
									</li>
									<li>
										<div class="text-center">
											<a>
												<strong>See All Alerts</strong>
												<i class="fa fa-angle-right"></i>
											</a>
										</div>
									</li>
								</ul>
							</li>
						</ul>
					</nav>
				</div>
			</div>
			<!-- /top navigation -->
		<!--Table-->
		<div class="right_col" role="main">
			<div class="">
			<div class="page-title">
				<div class="title_left">
					<h3>Respuesta de Actividades <small>Ejemplo de las respuestas </small></h3>
				</div>
			</div>

			<div class="clearfix"></div>

			<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="x_panel">
						<div class="x_title">
							<h2>Respuestas <small>Todas las respuestas</small></h2>
							<ul class="nav navbar-right panel_toolbox">
								<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
								</li>
								<!--<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
									<ul class="dropdown-menu" role="menu">
										<li><a href="#">Settings 1</a>
										</li>
										<li><a href="#">Settings 2</a>
										</li>
									</ul>
								</li>
								<li><a class="close-link"><i class="fa fa-close"></i></a>
								</li>-->
							</ul>
							<div class="clearfix"></div>
						</div>
						<div class="x_content">

							<table class="table">
								<thead>
								<tr>
									<th>Id</th>
									<th>Cantidad Respuestas Correctas</th>
									<th>Cantidad Respuetas Incorrectas</th>
									<th>Fecha</th>
									<th>Puntuaci&oacute;n</th>
								</tr>
								</thead>
								<tbody>
								<g:each in="${WebService.RespuestaActividad.list()}" var="respuesta">
								<tr>
									<td>${respuesta.id}</td>
									<td>${respuesta.cantidadRespuestasCorrectas}</td>
									<td>${respuesta.cantidadRespuestasIncorrectas}</td>
									<td>${respuesta.fecha.format('dd-mm-yyyy')}</td>
									<td>${respuesta.puntuacion}</td>
								</tr>
								</g:each>
								</tbody>
							</table>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

		<!-- jQuery -->
		<script src="${resource(dir: 'js',file: 'jquery.min.js')}"></script>
		<!-- Bootstrap -->
		<script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
		<!-- FastClick -->
		<script src="${resource(dir: 'js', file: 'fastclick.js')}"></script>
		<!-- NProgress -->
		<script src="${resource(dir: 'js', file: 'nprogress.js')}"></script>
		<!-- iCheck -->
		<script src="${resource(dir: 'js', file: 'icheck.min.js')}../vendors/iCheck/icheck.min.js"></script>

		<!-- Custom Theme Scripts -->
		<script src="${resource(dir: 'js', file: 'custom.min.js')}"></script>
	</body>
</html>
