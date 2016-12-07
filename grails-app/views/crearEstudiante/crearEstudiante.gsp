<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Crear Estudiante</title>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap -->
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="${resource(dir: 'css', file: 'font-awesome.min.css')}" rel="stylesheet">
    <!-- NProgress -->
    <link href="${resource(dir: 'css' , file: 'nprogress.css')}" rel="stylesheet">
    <!--iCheck-->
    <link href="${resource(dir: 'css' , file: 'green.css')}" rel="stylesheet">
    <!-- bootstrap-wysiwyg -->
    <link href="${resource(dir: 'css' , file: 'prettify.min.css')}" rel="stylesheet">
    <!-- Select2 -->
    <link href="${resource(dir: 'css' , file: 'select2.min.css')}" rel="stylesheet">
    <!-- Switchery -->
    <link href="${resource(dir: 'css' , file: 'switchery.min.css')}" rel="stylesheet">
    <!-- starrr -->
    <link href="${resource(dir: 'css' , file: 'starrr.css')}" rel="stylesheet">

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

                <br /> <!-- menu profile quick info -->
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
                                    <li><a>Crear<span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="${createLink(uri:'/crearMateria/crearMateria')}">Materia</a></li>
                                            <li><a href="${createLink(uri:'/crearGrupo/crearGrupo')}">Grupo</a></li>
                                            <li><a href="${createLink(uri:'/crearProfesor/crearProfesor')}">Profesor</a></li>
                                            <li><a href="${createLink(uri:'/crearEstudiante/crearEstudiante')}">Estudiante</a></li>
                                        </ul>
                                    </li>
                                    <li><a>Asignar<span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="${createLink(uri:'/asignarProfesorGrupo/asignarProfesorGrupo')}">Profesor a Grupo</a></li>
                                            <li><a href="${createLink(uri:'/asignarEstudianteGrupo/asignarEstudianteGrupo')}">Estudiante a Grupo</a></li>
                                            <li><a href="${createLink(uri:'/asignarActividad/asignarActividad')}">Actividad a Estudiante</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="${createLink(uri: '/respuestaActividad/index')}">Respuestas Actividades</a></li>
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

        <!-- page content -->
        <div class="right_col" role="main">
            <div class="">
                <div class="page-title">
                    <div class="title_left">
                        <h3>Crear Estudiante</h3>
                    </div>

                    <div class="title_right">

                    </div>
                </div>

                <div class="clearfix"></div>

                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Formulario</h2>
                                <ul class="nav navbar-right panel_toolbox">
                                </ul>

                                <div class="clearfix"></div>

                            </div>
                            <div class="x_content">
                                <br />
                                <g:form controller="crearEstudiante" method="POST" class="form-horizontal form-label-left input_mask">

                                    <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                                        <!--<input type="text" class="form-control has-feedback-left" id="nombre" placeholder="Nombre">-->
                                        <g:textField class="form-control has-feedback-left" placeholder="Nombre" id="nombre" name="nombre"></g:textField>

                                        <span class="fa fa-user form-control-feedback left" aria-hidden="true"></span>
                                    </div>

                                    <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                                        <!--<input type="text" class="form-control" id="apelllido" placeholder="Apellido">-->
                                        <g:textField class="form-control has-feedback-left" placeholder="Apellido" id="apellido" name="apellido"></g:textField>
                                        <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                                    </div>

                                    <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                                        <!--<input type="text" class="form-control" id="usuario" placeholder="Usuario">-->
                                        <g:textField class="form-control" placeholder="Usuario" id="usuario" name="username"></g:textField>
                                        <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                                    </div>

                                    <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                                        <g:textField class="form-control" placeholder="Contrasena" id="contresena" name="password"></g:textField>
                                        <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                                    </div>

                                    <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                                        <!--<input type="email" class="form-control has-feedback-left" id="email" required placeholder="Email"/>-->
                                        <g:textField class="form-control  has-feedback-left" placeholder="Email" id="email" name="email"></g:textField>

                                        <span class="fa fa-envelope form-control-feedback left" aria-hidden="true"></span>
                                    </div>

                                    <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
                                        <!--<input type="tel" class="form-control" id="telefono" placeholder="Telefono">-->
                                        <g:textField class="form-control" placeholder="Telefono" id="telefono" name="telefono"></g:textField>

                                        <span class="fa fa-phone form-control-feedback right" aria-hidden="true"></span>
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-12 form-group">
                                        <span class="right" aria-hidden="true"></span>

                                        <h4><label>Fecha Nacimiento: </label></h4><g:datePicker precision="day" value="${estudiante?.fechaNacimiento}" name="fechaNacimiento" type="da" class="form-control has-feedback-left" id="fechaNacimiento"/>
                                    </div>

                                    <div class="form-group" style="float:right">
                                        <div>
                                            <button class="btn btn-primary btn-">Cancelar</button>
                                            <g:actionSubmit action="save" value="Guardar"  class="btn btn-success"></g:actionSubmit>
                                        </div>
                                    </div>
                                </g:form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>


    <!--page content-->

    <!-- footer content -->
    <footer>
        <div class="pull-right">
            <!--Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>-->
        </div>
        <div class="clearfix"></div>
    </footer>
    <!-- /footer content -->
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

<!-- Custom Theme Scripts -->
<script src="${resource(dir: 'js', file: 'custom.min.js')}"></script>
</body>
</html>