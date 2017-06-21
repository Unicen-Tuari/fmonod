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
    <link href="css/mmaStyle.css" rel="stylesheet">
    <link href="css/carousel.css" rel="stylesheet">

    <!-- Load Favicon -->
    <link href="favicon.ico" rel="shorcut icon">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
    <div class="navbar-wrapper">
      <div class="container">
        <nav class="navbar navbar-inverse navbar-static-top">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="inicio">MMA Championship</a>
            </div>
            <div id="navbar" class="collapse navbar-collapse">
              <ul class="nav navbar-nav">
               {if $titulo == "Noticias MMA"}
               <li class="active"><a href="inicio">Home</a></li>
               <li><a href="torneos">Torneos</a></li>
               <li><a href="luchadores">Luchadores</a></li>
               <li><a href="contacto">Contacto</a></li>
               {else}
               {if $titulo == "Informacion Luchadores"}
               <li><a href="inicio">Home</a></li>
               <li><a href="torneos">Torneos</a></li>
               <li class="active"><a href="luchadores">Luchadores</a></li>
               <li><a href="contacto">Contacto</a></li>
               {/if}
               {if $titulo == "Fechas Torneos"}
               <li><a href="inicio">Home</a></li>
               <li class="active"><a href="torneos">Torneos</a></li>
               <li><a href="luchadores">Luchadores</a></li>
               <li><a href="contacto">Contacto</a></li>
               {/if}
               {if $titulo == "Formulario de consultas"}
               <li><a href="inicio">Home</a></li>
               <li><a href="torneos">Torneos</a></li>
               <li><a href="luchadores">Luchadores</a></li>
               <li class="active"><a href="contacto">Contacto</a></li>
               {/if}
               {/if}
              </ul>
              <ul class="nav navbar-nav navbar-right">
              <li class="dropdown">
                <a href="./" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Usuario<span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Iniciar Sesion</a></li>
                  <li><a href="#">Perfil</a></li>
                  <li><a href="#">Cerrar Sesion</a></li>
                  <li role="separator" class="divider"></li>
                  <li class="dropdown-header">Registro usuario</li>
                  <li><a href="#">Registrarse</a></li>
              </ul>
            </div><!--/.nav-collapse -->
          </div>
        </nav>
      </div>
    </div><!-- /.navbar-wrapper -->
