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
    hr {  margin: 150px; visibility:hidden; }
    .container-actividades {display: none;}
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
                                <!--Esta es la parte para mostrar las Categorias con for de grails-->

                                <center><ol id="selectable">
                                <g:each in="${juegos}" var="juego">
                                    <li class="ui-state-default" id="${juego.id}" ><h4>${juego.nombre}</h4></li>
                                </g:each>
                                </ol></center>
                                <hr/>
                                <!--Aqui estaran las actividades de la cateooria seleccionada -->
                                <div class="container container-actividades">
                                    <br/>
                                    <div class="content">
                                        <!--Las actividades se muestran dependiendo el juego-->
                                        <div id="grid" class="grid clearfix">
                                            <!--<div class="grid__item"><i class="fa fa-fw fa-file-text-o"></i></div>
                                            <div class="grid__item"><i class="fa fa-fw fa-file-text-o"></i></div>-->
                                        </div>
                                    </div><!-- /content-->
                                </div><!-- /container -->



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

                                <!--Donde se arrastra las actividades seleccionadads-->
                                <div id="drop-area" class="drop-area">
                                    <div>
                                        <div class="drop-area__item"><div class="dummy"></div></div>
                                        <!--<div class="drop-area__item"><div class="dummy"></div></div>
                                        <div class="drop-area__item"><div class="dummy"></div></div>
                                        <div class="drop-area__item"><div class="dummy"></div></div>
                                        <div class="drop-area__item"><div class="dummy"></div></div>
                                        <div class="drop-area__item"><div class="dummy"></div></div>
                                        <div class="drop-area__item"><div class="dummy"></div></div>
                                        <div class="drop-area__item"><div class="dummy"></div></div>-->
                                    </div>
                                </div>
                                <div class="drop-overlay"></div>

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

<script src="${resource(dir: 'js',file: 'draggabilly.pkgd.min.js')}"></script>
<script src="${resource(dir: 'js',file: 'dragdrop.js')}"></script>
<script type="text/javascript">
    var arrayElementos = [];
    $(document).ready(function (){
    });


    $( function() {
        $( "#selectable" ).selectable();
    } );

    $(".ui-state-default").click(function () {
        var juegoId = $(this).prop("id");
        jQuery.ajax({
            url: "${createLink(controller: 'asignarActividad', action: 'obtenerActividades')}",
            type: "POST",
            data: {id: juegoId},
            success: function (data) {
                $('.grid__item').remove();
                for(var key in data){
                    $("#grid").append('<div class="grid__item" id="' + data[key].id +'"><h4>' + data[key].nombre + '</h4><i class="fa fa-fw fa-file-text-o"></i></div>');
                    //$(".drop-area div").append(' <div class="drop-area__item"><div class="dummy"></div></div>');
                    startDraggables(data[key].id);

                }

            }
        });
        //$(".container").load("http://localhost:8080/Proyecto_Final/crearUsuario");
        $(".container-actividades").fadeIn();

        //This is for the focus on the div sepecified
        $(window).scrollTop($("#selectable").offset().top-20);

    });
    function startDraggables(id) {

        var body = document.body,
                dropArea = document.getElementById( 'drop-area' ),
                droppableArr = [], dropAreaTimeout;
        // initialize droppables
        [].slice.call( document.querySelectorAll( '#drop-area .drop-area__item' )).forEach( function( el ) {
            droppableArr.push( new Droppable( el, {

                onDrop : function( instance, draggableEl ) {
                    // show checkmark inside the droppabe element
                    classie.add( instance.el, 'drop-feedback' );
                    clearTimeout( instance.checkmarkTimeout );
                    instance.checkmarkTimeout = setTimeout( function() {
                        classie.remove( instance.el, 'drop-feedback' );
                    }, 800 );
                    // ...

                    //Para borrar el elemento seleccionado
                    alert(id);
                    $( "#grid " + "#"+id).remove();
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
    (function() {
        startDraggables();
    })();
</script>
</body>
</html>
