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

    <style>
        #selectable .ui-selecting { background: #FECA40; }
        #selectable .ui-selected { background: #F39814; color: white; }
        #selectable { list-style-type: none; margin: 0; padding: 0; width: 450px; }
        #selectable li { margin: 3px; padding: 1px; float: left; width: 100px; height: 80px; font-size: 4em; text-align: center; border: 1px solid black; border-radius: 10px;  box-shadow: 5px 5px grey;}
        #selectable2 .ui-selecting { background: #FECA40; }
        #selectable2 .ui-selected { background: #F39814; color: white; }
        #selectable2 { list-style-type: none; margin: 0; padding: 0; width: 450px; }
        #selectable2 li { margin: 3px; padding: 1px; float: left; width: 100px; height: 80px; font-size: 4em; text-align: center; border: 1px solid black; border-radius: 10px;  box-shadow: 5px 5px grey;}
        #parametros {margin-top:100px;}
        .linea-invisible {  margin-top: 150px; visibility:hidden;}
        .linea-juegos {margin-top: 30px;}
        .container-categorias {display: none;}
        .muestra-container-actividades {display:none;}
        .btn {  float: right;}
        .grid__item h4{margin-top:-60px;}
        .grid__item ol{
            display: inline;
            list-style-type: none;
            text-align: center;
        }
    </style>
    <script type="text/javascript">
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-7243260-2']);
        _gaq.push(['_trackPageview']);
        (function() {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();
    </script>

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
                                <h1>Crear Actividad</h1>
                                <ul class="nav navbar-right panel_toolbox">
                                </ul>

                                <div class="clearfix"></div>

                            </div>
                            <div class="x_content">
                                <br />
                                <label>Materias:</label>
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


                                <div id="estudiantesElements" class="ui-widget">
                                    <label for="estudiantes">Estudiantes:</label>
                                    <input id="estudiantes" size="50"/>
                                </div>
                                <label>Fecha Inicio:</label><input type="text" id="fechaInicio"/>
                                <label>Fecha Fin:</label><input type="text" id="fechaFin"/>
                                <h1>Juegos</h1>
                                <hr class="linea-juegos"/>

                                <!--Esta es la parte para mostrar las Categorias con for de grails-->
                                <div id="juegos">
                                    <center><ol id="selectable">
                                    <g:each in="${juegos}" var="juego">
                                        <li class="ui-state-default" id="${juego.id}" ><h4>${juego.nombre}</h4></li>
                                    </g:each>
                                    </ol></center>
                                </div>
                                <hr class="linea-invisible"/>

                                <!--Aqui estaran las categorias de la cateooria seleccionada -->
                                <h1>Categorias</h1>
                                <hr/>
                                <div id="categorias">
                                    <center>
                                        <ol id="selectable2">

                                        </ol>
                                    </center>
                                    <button type="button" id="agregarActividad" class="btn btn-primary btn-">Agregar Actividad</button>

                                </div><br/>
                                <div id="parametros">
                                    <div id="parametro1" class="parametros"><label>Numero de Jugadas</label><select id="opcionesJugadas1"></select></div><br/>
                                    <div id="parametro2" class="parametros"><label>Numero Minimo</label><select id="opcionesMinimo2"></select></div><br/>
                                    <div id="parametro3" class="parametros"><label>Numero Maximo</label><select id="opcionesMaximo3"></select></div><br/>
                                    <div id="parametro4" class="parametros"><label>Nivel de Dificultad</label><select id="opcionesDificultad4"></select></div><br/>
                                    <div id="parametro5" class="parametros"><label>Parametros</label><input id="opcionesEscrita5" type="text"/></div>
                                </div>
                                <h1>Actividades Temporales</h1>
                                <hr/>
                                <div class="container container-categorias">
                                    <br/>
                                    <div class="content">
                                        <!--Las actividades se muestran dependiendo el juego-->
                                        <div id="grid" class="grid clearfix">
                                            <!--<div class="grid__item"><i class="fa fa-fw fa-file-text-o"></i></div>
                                            <div class="grid__item"><i class="fa fa-fw fa-file-text-o"></i></div>-->
                                        </div>
                                    </div><!-- /content-->
                                </div><br/><!-- /container -->
                                <h1>Actividades Agregadas</h1>
                                <hr/>
                                <!--Para mostrar las actividades seleccionadads-->
                                <div class="container muestra-container-actividades">
                                    <br/>
                                    <div class="content">
                                        <!--Las actividades se muestran dependiendo el juego-->
                                        <div id="grid2" class="grid clearfix">
                                            <!--<div class="grid__item"><i class="fa fa-fw fa-file-text-o"></i></div>
                                            <div class="grid__item"><i class="fa fa-fw fa-file-text-o"></i></div>-->
                                        </div>
                                    </div><!-- /content-->
                                </div><!-- /container -->

                                <button id="guardar" type="submit" class="btn btn-primary btn-">Guardar</button>

                                <!--Donde se arrastra las actividades seleccionadads-->
                                <div id="drop-area" class="drop-area">
                                    <div>
                                        <div class="drop-area__item"><div class="dummy"></div></div>

                                    </div>
                                </div>
                                <div class="drop-overlay"></div>

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
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!--<script src="${resource(dir: 'js',file: 'jquery.min.js')}"></script>-->
<!-- Bootstrap -->
<script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
<!-- FastClick -->
<script src="${resource(dir: 'js', file: 'fastclick.js')}"></script>
<!-- NProgress -->
<script src="${resource(dir: 'js', file: 'nprogress.js')}"></script>
<!-- Custom Theme Scripts -->
<script src="${resource(dir: 'js', file: 'custom.min.js')}"></script>

<!-- scripts para el draggable -->
<script src="${resource(dir: 'js',file: 'draggabilly.pkgd.min.js')}"></script>
<script src="${resource(dir: 'js',file: 'dragdrop.js')}"></script>
<script type="text/javascript">
    //Arreglos para actividades agregadas
    var arrayElementos = [];
    var estudiantesList = [];
    var estudiantesIds = [];


    $(document).ready(function (){
        esconderParametros();
        $("#gruposElements").hide();
        $("#estudiantesElements").hide();

    });


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
            url: "${createLink(controller: 'asignarActividad', action: 'obtenerEstudiantes')}",
            type: "GET",
            data: {grupoId: grupoId},
            success: function (data) {
                for(key in data){
                    //alert("Estudiante:"+ data[key].nombre);
                    estudiantesList.push(data[key].nombre);
                    estudiantesIds.push(data[key].id);
                }
               $("#estudiantesElements").show();
                //alert("Lista de estudiantes " + estudiantesList);
            }

        });
    });


    function split( val ) {
        return val.split( /,\s*/ );
    }
    function extractLast( term ) {
        return split( term ).pop();
    }

    $( "#estudiantes" )
    // don't navigate away from the field on tab when selecting an item
            .on( "keydown", function( event ) {
                if ( event.keyCode === $.ui.keyCode.TAB &&
                        $( this ).autocomplete( "instance" ).menu.active ) {
                    event.preventDefault();
                }
            })
            .autocomplete({
                minLength: 0,
                source: function( request, response ) {
                    // delegate back to autocomplete, but extract the last term
                    response( $.ui.autocomplete.filter(
                            estudiantesList, extractLast( request.term ) ) );
                },
                focus: function() {
                    // prevent value inserted on focus
                    return false;
                },
                select: function( event, ui ) {
                    var terms = split( this.value );
                    // remove the current input
                    terms.pop();
                    // add the selected item
                    terms.push( ui.item.value );
                    // add placeholder to get the comma-and-space at the end
                    terms.push( "" );
                    this.value = terms.join( ", " );
                    return false;
                }
            });



    $( function() {
        $( "#selectable" ).selectable();
        $("#selectable2").selectable();
        $( "#fechaInicio" ).datepicker();
        $("#fechaFin").datepicker();

    } );

    $("#selectable .ui-state-default").click(function () {
        var juegoId = $(this).prop("id");
        var juegoNombre = $(this).text();
        var parametros = [];
        jQuery.ajax({
            url: "${createLink(controller: 'asignarActividad', action: 'obtenerCategorias')}",
            type: "GET",
            data: {juegoId: juegoId},
            success: function (data) {
                esconderParametros();
                ///$("#parametros").html(" ");

                //$('#grid .grid__item').remove();
                $("#selectable2 .ui-state-default").remove();
                //$("#parametros").css("display","none");

                //Para organizar la data
                data.sort(function(a,b){
                    return a.id - b.id;
                });
                for(var key in data){
                    parametros = data[key].parametros;
                    $("#selectable2").append('<li class="ui-state-default " id="' + data[key].id  + '" ><h4>' + data[key].name + '</h4></li>');
                    //$("#grid").append('<div class="grid__item" id="' + data[key].id +'"><h4>' + data[key].name + '</h4><i class="fa fa-fw fa-file-text-o"></i></div>');
                    //$(".drop-area div").append(' <div class="drop-area__item"><div class="dummy"></div></div>');
                    //startDraggables(data[key].id,data[key].nombre);

                }

                categoriasClick(juegoNombre,juegoId,parametros);

                //$(".container").load("http://localhost:8080/Proyecto_Final/crearUsuario");
                $(".container-categorias").fadeIn();

                //This is for the focus on the div sepecified
                $(window).scrollTop($(".container-categorias").offset().top-20);

            }

        });


    });

    function categoriasClick(juegoNombre,juegoId,parametros){
        $("#selectable2 .ui-state-default").click(function () {
            //$("#parametros").css("display","inline-block");

            for(var key in parametros){
                $("#parametro"+ parametros[key]).css("display","inline-block");

            }

            if($("#opcionesJugadas1").has("option").length <= 0) {
                //Numero de jugadas son 5
                $("#opcionesJugadas1").append('<option id="none1" value="None">--None--</option>');
                for (var i = 1; i < 6; i++) {
                    $("#opcionesJugadas1").append('<option id="' + i + '" value="' + i + '">' + i + '</option>');
                }
            }

            if(($("#opcionesMinimo2").has("option").length <= 0) && ($("#opcionesMaximo3").has("option").length <= 0)) {
                $("#opcionesMinimo2").append('<option id="none2" value="None">--None--</option>');
                $("#opcionesMaximo3").append('<option id="none3" value="None">--None--</option>');
                for (var i = 1; i < 21; i++) {
                    $("#opcionesMinimo2").append('<option id="' + i + '" value="' + i + '">' + i + '</option>');
                    $("#opcionesMaximo3").append('<option id="' + i + '" value="' + i + '">' + i + '</option>');

                }
            }


            if($("#opcionesDificultad4").has("option").length <= 0) {

                $("#opcionesDificultad4").append('<option id=none4" value="None">--None--</option>');
                for (var i = 1; i < 11; i++) {
                    $("#opcionesDificultad4").append('<option id="' + i + '" value="' + i + '">' + i + '</option>');
                }
            }
            //Limpiando los select y textbox
            limpiandoParametros();


        });

    }

    function limpiandoParametros(){
        $('#opcionesJugadas1').find('option[value="None"]').prop('selected', true);
        $('#opcionesMinimo2').find('option[value="None"]').prop('selected', true);
        $('#opcionesMaximo3').find('option[value="None"]').prop('selected', true);
        $('#opcionesDificultad4').find('option[value="None"]').prop('selected', true);
        $('#opcionesEscrita5').val("");

    }

    function esconderParametros(){
        for(var i=1;i<6;i++){
            $("#parametro"+i).hide();
        }
    }

    $("#agregarActividad").click(function() {
        var juego = $("#selectable .ui-selected").text();
        var juegoId = $("#selectable .ui-selected").prop("id");
        var categoria = $("#selectable2 .ui-selected").text();
        var categoriaId = $("#selectable2 .ui-selected").prop("id");
        var grupoId = "";

        $("#grupos").change(function() {
            grupoId = $(this).children(":selected").prop("id");
        });
        var param1 = "";
        var param2 = "";
        var param3 = "";
        var param4 = "";
        var param5 = "";


        if ($("#opcionesJugadas1").val() != "None") {
               param1 = $("#opcionesJugadas1").val();
        } else {
            param1 = null;
        }
        if ($("#opcionesMinimo2").val() != "None") {
            param2 = $("#opcionesMinimo2").val();
        } else {
            param2 = null;
        }
        if ($("#opcionesMaximo3").val() != "None") {
            param3 = $("#opcionesMaximo3").val();
        } else {
            param3 = null;
        }

        if($("#opcionesDificultad4").val() != "None") {
            param4 = $("#opcionesDificultad4").val();
        }else {
            param4 = null;
        }
        //alert($("#opcionesEscrita5").val());
        if($("#opcionesEscrita5").val() != "") {
            param5 = $("#opcionesEscrita5").val();
        } else {
            param5 = null;
        }

        //alert(param1 + "" + param2 + "" + param3 + "" + param4 + ""  + param5);
        //Agredango actividad temporal
        $("#grid").append('<li class="grid__item" id="' +categoriaId+'"><h4><ol><li class="actividad_juegoId" style="visibility:hidden;">'+juegoId+'</li><li class="actividad_juego">' + juego + "</li><li class='actividad_categoria'>" + categoria + "</li><li id='actividad_param1'>" + (param1 == null ? " " :"# Jugadas: " + param1) + "</li><li id='actividad_param2'>" +
                (param2 == null ? " " :"# Minimo: " + param2) + "</li><li id='actividad_param3'>" +(param3 == null ? " " : "# Maximo: " + param3) +  "</li><li class='actividades_param4'>" +  (param4 == null ? " " :"# Dificultad: " + param4) +  "</li><li class='actividad_param5'>" +
                (param5 == null ? " " :"Parametros: " + param5) +'</li><ol></h4><i class="fa fa-fw"></i></div>');
        startDraggables(juegoId,categoriaId,juego,categoria,grupoId,param1,param2,param3,param4,param5);

    });



    //Para seleccion de materias
    function startDraggables(juegoId,categoriaId,juego,categoria,grupoId,param1,param2,param3,param4,param5) {
        var body = document.body,
                dropArea = document.getElementById( 'drop-area' ),
                droppableArr = [], dropAreaTimeout;
        // initialize droppables
        [].slice.call( document.querySelectorAll( '#drop-area .drop-area__item' )).forEach( function( el ) {
            droppableArr.push( new Droppable( el, {

                onDrop : function( instance, draggableEl ) {
                    // show checkmark inside the droppabe element
                    classie.add(instance.el, 'drop-feedback');
                    clearTimeout(instance.checkmarkTimeout);
                    instance.checkmarkTimeout = setTimeout(function () {
                        classie.remove(instance.el, 'drop-feedback');
                    }, 800);
                    // ...

                    //verificacion de la lista
                    if (arrayElementos.indexOf(categoriaId) == -1) {
                        //Para borrar el elemento seleccionado
                        $("#grid " + "#" + categoriaId).remove();
                        //Para agregar los elementos a la lista
                        arrayElementos.push(categoriaId);

                        $("#grid2").append('<div class="grid__item" id="' + categoriaId +'"><span class="close" style="margin-top:-63px;margin-left:2px;float:left;">x</span><h4><ol><li class="agregada_grupoId" style="visibility: hidden">'+grupoId+'</li><li class="agregada_juegoId">'+juegoId+'</li><li class="agregada_juego">' + juego + "</li><li id="+categoriaId+" class='agregada_categoria'>" + categoria + "</li><li class='agregada_param1'>" + (param1 == null ? " " :"# Jugadas: " + param1) + "</li><li class='agregada_param2'>" +
                                (param2 == null ? " " :"# Minimo: " + param2) + "</li><li class='agregada_param3'>" +(param3 == null ? " " : "# Maximo: " + param3) +  "</li><li class='agregada_param4'>" +  (param4 == null ? " " :"# Dificultad: " + param4) +  "</li><li class='agregada_param5'>" +
                                (param5 == null ? " " :"Parametros: " + param5) +'</li><ol></h4><i class="fa fa-fw "></i></div>').fadeIn();
                        $(".muestra-container-actividades").fadeIn();

                    }

                    //Boton cerrar para cada actividad agregada
                    $( ".close").click(function (){
                        var closeId = $(this).parent().prop("id");
                        //alert(closeId);
                        //alert("Cantidad elementos " + arrayElementos.length);
                        //alert("Esta dentro del arreglo " + arrayElementos.indexOf(closeId));
                        //alert(arrayElementos);
                        if(arrayElementos.indexOf(closeId) >= 0){
                            //alert(arrayElementos);
                            var removed = arrayElementos.splice(arrayElementos.indexOf(closeId),1);
                            $("#grid2 " + "#" + closeId).remove();
                        }
                        //alert("Cantidad elementos despues" + arrayElementos.length);

                    });
                    //alert(arrayElementos);
                    //This is for the focus on the div sepecified
                    $(window).scrollTop($(".muestra-container-actividades").offset().top-20);

                    //alert(nombre);
                }
            } ) );
        } );


        // initialize draggable(s)
        [].slice.call(document.querySelectorAll( '#grid .grid__item' )).forEach( function( el ) {
            new Draggable( el, droppableArr, {
                scroll : true,
                scrollable : '#drop-area',
                scrollSpeed : 40,
                scrollSensitivity : 50,
                draggabilly : { containment: document.body },
                onStart : function() {
                    // add class 'drag-active' to body
                    classie.add( body, 'drag-active' );
                    // clear timeout: dropAreaTimeout (toggle drop area)
                    clearTimeout( dropAreaTimeout );
                    // show dropArea
                    classie.add( dropArea, 'show' );
                },
                onEnd : function( wasDropped ) {
                    var afterDropFn = function() {
                        // hide dropArea
                        classie.remove( dropArea, 'show' );
                        // remove class 'drag-active' from body
                        classie.remove( body, 'drag-active' );
                    };

                    if( !wasDropped ) {
                        afterDropFn();
                    }
                    else {
                        // after some time hide drop area and remove class 'drag-active' from body
                        clearTimeout( dropAreaTimeout );
                        dropAreaTimeout = setTimeout( afterDropFn, 400 );
                    }
                }
            } );
        } );

    }

    $("#guardar").click(function (){
        var juegoIds = [];
        var estudianteIds = [];
        var categoriaIds = [];
        var materiasId = "";
        var grupoIds = "";
        var parametros = [];
        var valoresParametros = [];
        //alert($("#estudiantes").val());
        $(".agregada_juegoId").each(function() {
            //alert($(this).html());
            juegoIds.push($(this).html());
            //alert(juegoIds);
        });

        $(".agregada_categoria").each(function (){
           categoriaIds.push($(this).prop("id"));
        });


        //alert("Lista Catrogiras " + categoriaIds);
        var estudianteComas = [];
        if($("#estudiantes").val() != null || $("#estudiantes").val() != "" || $("#estudiantes").val() != undefined){
            estudianteComas = $("#estudiantes").val().split(", ");
        }
        //alert("Lista de estudiantes " + estudianteComas );
        for(var key in estudianteComas) {
            //alert("Valor de estudiantes " + estudianteComas[key]);
            //alert(estudiantesList.indexOf(estudianteComas[key]));
            if (estudiantesList.indexOf(estudianteComas[key]) >= 0){
                estudianteIds.push(estudiantesIds[estudianteComas.indexOf(estudianteComas[key])]);
                //alert(estudianteIds);
            }
        }

        materiasId = $("#materias").children(":selected").prop("id");


        grupoIds =  $("#grupos").children(":selected").prop("id");

        var count = 0;
        $("#grid2 .grid__item").each(function() {
            var p = [];
            var valores = [];
            var param1 = $(this).find(".agregada_param1").text().split(/#[\s]+[\w]+:[\s]+/g)[1];
            var param2 = $(this).find(".agregada_param2").text().split(/#[\s]+[\w]+:[\s]+/g)[1];
            var param3 = $(this).find(".agregada_param3").text().split(/#[\s]+[\w]+:[\s]+/g)[1];
            var param4 = $(this).find(".agregada_param4").text().split(/#[\s]+[\w]+:[\s]+/g)[1];
            var param5 = $(this).find(".agregada_param5").text().split(/[\w]+:[\s]+/g)[1];
            //alert( typeof param1 + '' + typeof param2 + '' + typeof param3 + '' + typeof param4 + '' + typeof param5);
            //alert(param1.val() + '' + param2.val() + '' + param3.val() + '' + param4.val() + '' + param5.val());

            if(param1 != null ){
                p.push(1);
                valores.push(param1);
                //alert("adentro1");
            }

            if(param2 != null){
                p.push(2);
                valores.push(param2);

                //alert("adentro2");

            }
            if(param3 != null ){
                p.push(3);
                valores.push(param3);

                //alert("adentro3");

            }
            if(param4 != null ){
                p.push(4);
                valores.push(param4);

                //alert("adentro4");

            }
            if(param5 != null ){
                p.push(5);
                valores.push(param5);

                //alert("adentro5");

            }
            //alert("Parametros " +p);
            alert(valores);
            parametros.push(p);
            valoresParametros.push(valores);
            //console.log(parametros);
            console.log(valoresParametros);
            p = [];
            valores = [];
            count++;

        });

        //alert("Valores " + valoresParametros);

        jQuery.ajax({
            url: "${createLink(controller: 'asignarActividad', action: 'guardarActividad')}",
            type: "POST",
            traditional: true,
            data: {juegosId: juegoIds,estudiantesId:estudianteIds,categoriaIds:categoriaIds,materiasId:materiasId,gruposId:grupoIds,parametros:parametros,valoresParamatros:valoresParametros},
            success: function (data) {


            }

        });

    });

    //Para los draggables de activad.
    (function() {
        startDraggables();
    })();
</script>
</body>
</html>
