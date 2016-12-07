<%--
  Created by IntelliJ IDEA.
  User: Mikey
  Date: 10/3/16
  Time: 8:24 PM
--%>

<%@ page contentType="text/html;charset=UTF-8"   %>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Crear Actividad</title>

    <link href="${resource(dir: 'css', file: 'jquery-ui.min.css')}" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
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

    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'normalize.css')}" />
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'font-awesome.min.css')}" />
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'sidebar.css')}" />
    <script src="${resource(dir: 'js', file: 'modernizr.custom.js')}"></script>
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

    <!-- page content -->
        <g:form controller="asignarActividad" action="asignarActividad" method="POST">
            <div class="right_col" role="main">
                <div class="">
                    <div class="page-title">
                        <!--<div class="title_left">
                            <h3>Crear Actividad</h3>
                        </div>-->

                        <div class="title_right">

                        </div>
                    </div>

                    <div class="clearfix"></div>

                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h1>Grafica</h1>
                                    <ul class="nav navbar-right panel_toolbox">
                                    </ul>

                                    <div class="clearfix"></div>

                                </div>
                                <div class="x_content">
                                    <br />
                                    <label for="materias">Materias:</label>
                                    <select id="materias">
                                        <option id="none">--Ninguna--</option>
                                        <g:each in="${materias}" var="mat">
                                            <option id="${mat.id}" value="'${mat.nombreMateria}'">${mat.nombreMateria}</option>
                                        </g:each>
                                    </select>

                                    <div id="gruposElements">
                                        <label>Grupos:</label>
                                        <select id="grupos">
                                        </select>
                                    </div>
                                    <label for="categorias">Juego:</label>
                                    <select id="categorias">
                                        <option>--Ninguna--</option>
                                        <g:each in="${categorias}" var="cat">
                                            <option id="${cat.id}" value="${cat.name}">${cat.name}</option>
                                        </g:each>
                                    </select>

                                    <div id="estudiantesElements" class="ui-widget">
                                        <label>Estudiantes:</label>
                                        <select id="estudiantes">
                                        </select>

                                    </div>
                                    <!--Grafico-->
                                    <h1>Sumar</h1>
                                    <div id="graph_bar" style="width:100%; height:280px;"></div>

                                    <h1>Restar</h1>
                                    <div id="graph_bar_restar" style="width:100%; height:280px;"></div>

                                    <h1>Sumar y Restar</h1>
                                    <div id="graph_bar_sumRes" style="width:100%; height:280px;"></div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </g:form>

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
<!-- jQuery -->
<!--<script src="https://code.jquery.com/jquery-1.12.4.js"></script>-->
<!--<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>-->
<script src="${resource(dir:'js',file:'jquery.js')}"></script>

<script src="${resource(dir:'js',file:'jquery-ui.js')}"></script>

<%--<script src="${resource(dir: 'js',file: 'jquery.min.js')}"></script>--%>
<!-- Bootstrap -->
<script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
<!-- FastClick -->
<script src="${resource(dir: 'js', file: 'fastclick.js')}"></script>
<!-- NProgress -->
<script src="${resource(dir: 'js', file: 'nprogress.js')}"></script>

<!-- morris.js -->
<script src="${resource(dir: 'js', file: 'raphael.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'morris.min.js')}"></script>

<!-- Custom Theme Scripts -->
<script src="${resource(dir: 'js', file: 'custom.min.js')}"></script>


<script type="text/javascript">

    $(document).ready(function (){

    });

    var estudiantesList = []
    //Cuando se cambie de materia
    $("#materias").change(function () {
        var materiaId = $(this).children(":selected").prop("id");
        jQuery.ajax({
            url: "${createLink(controller: 'asignarActividad', action: 'obtenerGrupos')}",
            type: "GET",
            data: {materiaId: materiaId},
            success: function (data) {
                $("#gruposElements").show();
                $("#grupos").append('<option id="none">--None--</option>');
                for(var key in data){
                    $("#grupos").append('<option id="'+data[key].id+'">' +data[key].codigoGrupo+'</option>');
                }

            }

        });

    });

    $("#grupos").change(function(){
        var grupoId = $(this).children(":selected").prop("id");
        jQuery.ajax({
            url: "${createLink(controller: 'verGraficas', action: 'obtenerEstudiantes')}",
            type: "GET",
            data: {grupoId: grupoId},
            success: function (data) {
                for(key in data){
                    //alert("Estudiante:"+ data[key].nombre);
                    $("#estudiantes").append('<option id="'+data[key].id+'">' + data[key].nombre +'</option>');
                }
            }

        });
    });

    $("#estudiantes").change(function (){
        var estuId = $(this).children(":selected").prop("id");
        var juego = $("#categorias").children(":selected").prop("value");
        console.log(juego);
        jQuery.ajax({
            url: "${createLink(controller: 'verGraficas', action: 'graficarActividad')}",
            type: "GET",
            data: {estuId: estuId,juego:juego},
            success: function (data) {
                if(juego == "Aritmetica") {
                    graficarSumar(data);
                }

                if(juego == "Memorizar"){
                    graficarMemorizar();
                }

                if(juego == "Trazar"){
                    graficarTrazar();
                }

                if(juego == "Vocabulario"){
                    graficarVocabulario();
                }
            }

        });

    });

    function graficarSumar(data){
        dat = [ {mes: 'iPhone 4', correctas: 380},
            {mes: 'iPhone 4S', correctas: 655},
            {mes: 'iPhone 3GS', correctas: 275},
            {mes: 'iPhone 5', correctas: 1571},
            {mes: 'iPhone 5S', correctas: 655},
            {mes: 'iPhone 6', correctas: 2154},
            {mes: 'iPhone 6 Plus', correctas: 1144},
            {mes: 'iPhone 6S', correctas: 2371},
            {mes: 'iPhone 6S Plus', correctas: 1471},
            {mes: 'Other', correctas: 1371}];
        datos = [];
        var i = 0;
        console.log(data);
        for(key in data) {
            if (i+1 == 13) {
                break;
            }
            if (data[key] != null) {
                var month = new Date(data[key].fecha);
                datos[i] = {correctas:+ data[key].cantidadRespuestasCorrectas,mes:(month.getMonth()+1).toString()};
                i++;
            }
        }
        console.log(datos);
        console.log(dat);

        Morris.Bar({
            element: 'graph_bar',
            data: datos
            ,
            xkey: 'mes',
            ykeys: ['correctas'],
            labels: ['Mes y Cantidad Respuestas Correctas'],
            barRatio: 0.4,
            barColors: ['#26B99A', '#34495E', '#ACADAC', '#3498DB'],
            xLabelAngle: 35,
            hideHover: 'auto',
            resize: true
        });
    }

</script>
</body>
</html>
