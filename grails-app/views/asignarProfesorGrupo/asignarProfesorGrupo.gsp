
<%--
  Created by IntelliJ IDEA.
  User: Mikey
  Date: 9/19/16
  Time: 11:43 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Asignar Grupo a Profesor</title>

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

    <!-- Datatables -->
    <link href="${resource(dir: 'css' , file: 'dataTables.bootstrap.min.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css' , file: 'buttons.bootstrap.min.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css' , file: 'fixedHeader.bootstrap.min.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css' , file: 'responsive.bootstrap.min.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css' , file: 'scroller.bootstrap.min.css')}" rel="stylesheet">

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
                        <h3>Asignar Grupo a Profesor</h3>
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
                                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                </ul>

                                <div class="clearfix"></div>

                            </div>
                            <div class="x_content">
                                <br />

                                <g:form controller="asignarProfesorGrupo" method="POST" action="asignarProfesorGrupo" class="form-horizontal form-label-left input_mask">

                                    <div class="col-md-6 col-sm-6 col-xs-12 ">
                                        <!--<input type="text" class="form-control has-feedback-left" id="nombre" placeholder="Nombre">-->
                                        <label><h4>Materia: </h4></label>
                                        <select id="materias" name="materia">
                                            <option>--None--</option>
                                            <g:each in="${materias}" var="mat">
                                                <option id="${mat.id}" value="'${mat.nombreMateria}'">${mat.nombreMateria}</option>
                                            </g:each>

                                        </select>
                                        <span class="left" aria-hidden="true"></span>
                                    </div>

                                    <div class="col-md-6 col-sm-6 col-xs-12 ">
                                        <!--<input type="text" class="form-control has-feedback-left" id="nombre" placeholder="Nombre">-->
                                        <label><h4>Grupos: </h4></label>
                                        <select id="grupos" name="grupo" >

                                        </select>
                                        <span class="left" aria-hidden="true"></span>
                                    </div>
                                    <table id="datatable-checkbox" class="table table-striped table-bordered bulk_action">
                                        <thead>
                                        <tr>
                                            <th> Selected</th>
                                            <th>Nombre</th>
                                            <th>Apellido</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <g:each in="${profesores}" var="pro">
                                            <tr id="${pro.id}">
                                                <td><input class="checkSelected" type="radio"></td>
                                                <td>${pro.nombre}</td>
                                                <td>${pro.apellido}</td>
                                            </tr>
                                        </g:each>
                                        </tbody>
                                    </table>

                                    <div class="form-group" style="float:right">
                                        <div>
                                            <button type="submit" class="btn btn-primary btn-">Cancelar</button>
                                            <!--<g:actionSubmit value="Guardar"  class="btn btn-success"></g:actionSubmit>-->
                                            <button type="submit" id="guardar" class="btn btn-primary btn-">Guardar</button>

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

<!-- Datatables -->
<script src="${resource(dir: 'js',file: 'jquery.dataTables.min.js')}"></script>
<script src="${resource(dir: 'js',file: 'dataTables.bootstrap.min.js')}"></script>
<script src="${resource(dir: 'js',file: 'dataTables.buttons.min.js')}"></script>
<script src="${resource(dir: 'js',file: 'buttons.bootstrap.min.js')}"></script>
<script src="${resource(dir: 'js',file: 'buttons.flash.min.js')}"></script>
<script src="${resource(dir: 'js',file: 'buttons.html5.min.js')}"></script>
<script src="${resource(dir: 'js',file: 'buttons.print.min.js')}"></script>
<script src="${resource(dir: 'js',file: 'dataTables.fixedHeader.min.js')}"></script>
<script src="${resource(dir: 'js',file: 'dataTables.keyTable.min.js')}"></script>
<script src="${resource(dir: 'js',file: 'dataTables.responsive.min.js')}"></script>
<script src="${resource(dir: 'js',file: 'responsive.bootstrap.js')}"></script>
<script src="${resource(dir: 'js',file: 'dataTables.scroller.min.js')}"></script>
<script src="${resource(dir: 'js',file: 'jszip.min.js')}"></script>
<script src="${resource(dir: 'js',file: 'pdfmake.min.js')}"></script>
<script src="${resource(dir: 'js',file: 'vfs_fonts.js')}"></script>


<!-- Custom Theme Scripts -->
<script src="${resource(dir: 'js', file: 'custom.min.js')}"></script>

<script>
    $(document).ready(function (){
        var handleDataTableButtons = function() {
            if ($("#datatable-buttons").length) {
                $("#datatable-buttons").DataTable({
                    dom: "Bfrtip",
                    buttons: [
                        {
                            extend: "copy",
                            className: "btn-sm"
                        },
                        {
                            extend: "csv",
                            className: "btn-sm"
                        },
                        {
                            extend: "excel",
                            className: "btn-sm"
                        },
                        {
                            extend: "pdfHtml5",
                            className: "btn-sm"
                        },
                        {
                            extend: "print",
                            className: "btn-sm"
                        },
                    ],
                    responsive: true
                });
            }
        };

        TableManageButtons = function() {
            "use strict";
            return {
                init: function() {
                    handleDataTableButtons();
                }
            };
        }();

        var $datatable = $('#datatable-checkbox');

        $datatable.dataTable({
            'order': [[ 1, 'asc' ]],
            'columnDefs': [
                { orderable: false, targets: [0] }
            ]
        });
        $datatable.on('draw.dt', function() {
            $('input').iCheck({
                checkboxClass: 'icheckbox_flat-green'
            });
        });

        TableManageButtons.init();

    });

    $("#materias").change(function () {
        var materiaId = $(this).children(":selected").prop("id");
        jQuery.ajax({
            url: "${createLink(controller: 'asignarProfesorGrupo', action: 'obtenerGrupos')}",
            type: "GET",
            data: {materiaId: materiaId},
            success: function (data) {
                $("#grupos").append('<option id="none">--None--</option>');
                for(var key in data){
                   $("#grupos").append('<option id="'+data[key].id+'">' +data[key].codigoGrupo+'</option>');
                }

            }

        });

    });

    $("#guardar").click(function () {
        var grupoId = $("#grupos").children(":selected").prop("id");
        var profSelectedId = $(".checkSelected").parent().parent().prop("id");

        jQuery.ajax({
            url: "${createLink(controller: 'asignarProfesorGrupo', action: 'save')}",
            type: "POST",
            traditional: true,
            data: {profId: profSelectedId, grupoId: grupoId},
            success: function (data) {

            },
            dataType: "json",
            traditional: true

            });

    });
</script>
</body>
</html>