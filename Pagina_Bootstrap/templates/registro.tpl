<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>{$titulo}</title>

    <base href="{$baseDir}">

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/regStyle.css" rel="stylesheet">
    <link href="css/mmaStyle.css" rel="stylesheet">

    <!-- Load Favicon -->
    <link href="favicon.ico" rel="shorcut icon">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
    <div ID="contenido">
        <div class="container">
            <div id="fullscreen_bg" class="fullscreen_bg"/>
              <div id="regContainer" class="container">
              <div class="row">
              <div class="col-md-6 col-md-offset-3">
                <div class="panel panel-login">
                  <div class="panel-heading">
                    <div class="row">
                      <div class="col-sm-6 col-sm-offset-3">
                        <a id="register-form">Registro</a>
                      </div>
                    </div>
                    <hr>
                  </div>
                  <div class="panel-body">
                    <div class="row">
                      <div class="col-lg-12">
                        <form id="register-form" action="usuario/registro" method="post" role="form">
                          <div class="form-group">
                            <label for="username">Usuario</label>
                            <input type="email" name="username" id="username" tabindex="1" class="form-control" placeholder="Usuario" value="">
                          </div>
                          <div class="form-group">
                            <label for="password">Contraseña</label>
                            <input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Contraseña">
                          </div>
                          <div class="form-group">
                            <label for="confirm-password">Confirma Contraseña</label>
                            <input type="password" name="confirm-password" id="confirm-password" tabindex="2" class="form-control" placeholder="Confirma Contraseña">
                          </div>
                          <div class="form-group">
                            <div class="row">
                              <div class="col-sm-6 col-sm-offset-3">
                                <input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="Registrarse">
                              </div>
                            </div>
                          </div>
                        </form>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
      </div><!-- /.container -->
    </div>
