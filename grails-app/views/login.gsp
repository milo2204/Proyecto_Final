<%--
  Created by IntelliJ IDEA.
  User: Mikey
  Date: 8/18/16
  Time: 1:30 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>KCLE! | </title>

    <!-- Bootstrap -->
    <link href="${resource(dir: 'css',file: 'bootstrap.min.css')}" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="${resource(dir: 'css',file: 'font-awesome.min.css')}" rel="stylesheet">
    <!-- NProgress -->
    <link href="${resource(dir: 'css',file: 'nprogress.css')}" rel="stylesheet">
    <!-- Animate.css -->
    <link href="${resource(dir: 'css',file: 'animate.min.css')}" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="${resource(dir: 'css',file: 'custom.min.css')}" rel="stylesheet">
</head>

<body class="login">
<div>
    <a class="hiddenanchor" id="signup"></a>
    <a class="hiddenanchor" id="signin"></a>

    <div class="login_wrapper">
        <div class="animate form login_form">
            <section class="login_content">
                <form>
                    <h1>In&iacute;cio de Sessi&oacute;n</h1>
                    <div>
                        <input type="text" class="form-control" placeholder="Usuario" required="" />
                    </div>
                    <div>
                        <input type="password" class="form-control" placeholder="Contrase&ntilde;a" required="" />
                    </div>
                    <div>
                        <a class="btn btn-default submit" href="index.gsp">Iniciar</a>
                        <a class="reset_pass" href="#">Perd&iacute; contrase&ntilde;a?</a>
                    </div>

                    <div class="clearfix"></div>

                    <div class="separator">
                        <p class="change_link">Nuevo al sitio?
                            <a href="#signup" class="to_register"> Crear Cuenta </a>
                        </p>

                        <div class="clearfix"></div>
                        <br />

                        <div>
                            <h1><i class="fa fa-paw"></i> KCLE!</h1>
                            <p>©2016 All Rights Reserved. KCLE! </p>
                        </div>
                    </div>
                </form>
            </section>
        </div>

        <div id="register" class="animate form registration_form">
            <section class="login_content">
                <form>
                    <h1>Crear Cuenta</h1>
                    <div>
                        <input type="text" class="form-control" placeholder="Usuario" required="" />
                    </div>
                    <div>
                        <input type="email" class="form-control" placeholder="Correo" required="" />
                    </div>
                    <div>
                        <input type="password" class="form-control" placeholder="Contrase&ntilde;a" required="" />
                    </div>
                    <div>
                        <a class="btn btn-default submit" href="index.gsp">Submitir</a>
                    </div>

                    <div class="clearfix"></div>

                    <div class="separator">
                        <p class="change_link">Ya eres miembro?
                            <a href="#signin" class="to_register"> Iniciar </a>
                        </p>

                        <div class="clearfix"></div>
                        <br />

                        <div>
                            <h1><i class="fa fa-paw"></i> KCLE!</h1>
                            <p>©2016 All Rights Reserved. KCLE!  Privacy and Terms</p>
                        </div>
                    </div>
                </form>
            </section>
        </div>
    </div>
</div>
</body>
</html>