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
              <a class="navbar-brand" href="#">MMA Championship</a>
            </div>
            <div id="navbar" class="collapse navbar-collapse">
              <ul class="nav navbar-nav">
               {if $titulo == "Torneos MMA"}
               <li class="active"><a href="#">Home</a></li>
               <li><a href="torneos.php">Torneos</a></li>
               <li><a href="luchadores.php">Luchadores</a></li>
               <li><a href="contacto.php">Contacto</a></li>
               {else}
               {if $titulo == "Informacion Luchadores"}
               <li><a href="#">Home</a></li>
               <li><a href="torneos.php">Torneos</a></li>
               <li class="active"><a href="luchadores.php">Luchadores</a></li>
               <li><a href="contacto.php">Contacto</a></li>
               {/if}
               {if $titulo == "Fechas Torneos"}
               <li><a href="#">Home</a></li>
               <li class="active"><a href="torneos.php">Torneos</a></li>
               <li><a href="luchadores.php">Luchadores</a></li>
               <li><a href="contacto.php">Contacto</a></li>
               {/if}
               {if $titulo == "Formulario de consultas"}
               <li><a href="#">Home</a></li>
               <li><a href="torneos.php">Torneos</a></li>
               <li><a href="luchadores.php">Luchadores</a></li>
               <li class="active"><a href="contacto.php">Contacto</a></li>
               {/if}
               {/if}
               <!--TODO Las redirecciones se haran desde el route cuando se implemente -->
              </ul>
            </div><!--/.nav-collapse -->
          </div>
        </nav>
      </div>
    </div><!-- /.navbar-wrapper -->
