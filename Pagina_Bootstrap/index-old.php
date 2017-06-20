
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>MMA Championship</title>

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
                <li class="active"><a href="#">Home</a></li>
                <li><a href="torneos.php">Torneos</a></li>
                <li><a href="luchadores.php">Luchadores</a></li>
                <li><a href="contacto.php">Contacto</a></li>
              </ul>
            </div><!--/.nav-collapse -->
          </div>
        </nav>
      </div>
    </div><!-- /.navbar-wrapper -->
      <!-- Carousel ================================================== -->
      <div id="carouselMMA" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
          <li data-target="#carouselMMA" data-slide-to="0" class="active"></li>
          <li data-target="#carouselMMA" data-slide-to="1"></li>
          <li data-target="#carouselMMA" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
          <div class="item active">
            <img class="first-slide" src="images/mma-slide1.jpg" alt="First slide">
            <div class="container">
              <div class="carousel-caption">
                <h1>Sigue Luchando</h1>
                <p><code>Pelea</code> hasta que hayas vencido al ultimo. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco</p>
              </div>
            </div>
          </div>
          <div class="item">
            <img class="second-slide" src="images/mma-slide2.jpeg" alt="Second slide">
            <div class="container">
              <div class="carousel-caption">
                <h1>Combate con los mejores</h1>
                <p><code>Cras</code> justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              </div>
            </div>
          </div>
          <div class="item">
            <img class="third-slide" src="images/mma-slide3.jpg" alt="Third slide">
            <div class="container">
              <div class="carousel-caption">
                <h1>Entrena como el mejor</h1>
                <p><code>Cras</code> justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              </div>
            </div>
          </div>
        </div>
        <a class="left carousel-control" href="#carouselMMA" role="button" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carouselMMA" role="button" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div><!-- /.carousel -->

    <!-- Marketing messaging and featurettes
       ================================================== -->
       <!-- Wrap the rest of the page in another container to center all the content. -->

       <div class="container marketing">

         <!-- Three columns of text below the carousel -->
         <div class="row">
           <div class="col-lg-4">
             <img class="img-circle" src="images/torneo1.jpg" alt="Generic placeholder image" width="140" height="140">
             <h2>Torneo Importante</h2>
             <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
             <p><a class="btn btn-default" href="torneos.php" role="button">Ver Detalles &raquo;</a></p>
           </div><!-- /.col-lg-4 -->
           <div class="col-lg-4">
             <img class="img-circle" src="images/campeon1.jpg" alt="Generic placeholder image" width="140" height="140">
             <h2>Historia Campeon 1</h2>
             <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>
             <p><a class="btn btn-default" href="luchadores.php" role="button">Ver Detalles &raquo;</a></p>
           </div><!-- /.col-lg-4 -->
           <div class="col-lg-4">
             <img class="img-circle" src="images/comentarios.jpg" alt="Generic placeholder image" width="140" height="140">
             <h2>Donde comentar</h2>
             <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
             <p><a class="btn btn-default" href="contacto.php" role="button">Ver Detalles &raquo;</a></p>
           </div><!-- /.col-lg-4 -->
         </div><!-- /.row -->


         <!-- START THE FEATURETTES -->

         <hr class="featurette-divider">

         <div class="row featurette">
           <div class="col-md-7">
             <h2 class="featurette-heading">Conseguir equipo de entrenamiento <span class="text-muted">a un precio especial.</span></h2>
             <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
           </div>
           <div class="col-md-5">
             <img class="featurette-image img-responsive center-block" src="images/equipo-entrenamiento.jpg" alt="Generic placeholder image">
           </div>
         </div>

         <hr class="featurette-divider">

         <div class="row featurette">
           <div class="col-md-7 col-md-push-5">
             <h2 class="featurette-heading">Entrena con nosotros. <span class="text-muted">Velo tu mismo</span></h2>
             <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
           </div>
           <div class="col-md-5 col-md-pull-7">
             <img class="featurette-image img-responsive center-block" src="images/mma-training.jpg" alt="Generic placeholder image">
           </div>
         </div>

         <hr class="featurette-divider">

         <div class="row featurette">
           <div class="col-md-7">
             <h2 class="featurette-heading">Siguenos en nuestras redes sociales, <span class="text-muted">no te pierdas de nada</span></h2>
             <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
           </div>
           <div class="col-md-5">
             <img class="featurette-image img-responsive center-block" src="images/redes-sociales.jpg" alt="Generic placeholder image">
           </div>
         </div>

         <hr class="featurette-divider">
         <!-- /END THE FEATURETTES -->

       </div><!-- /.container -->

       <!-- FOOTER -->
       <footer class="index-footer">
         <p><a href="#">Back to top</a></p>
         <p>&copy; 2017 Facundo Monod &middot; <a href="https://themes.getbootstrap.com/pages/privacy-policy" target="_blank">Privacy</a> &middot; <a href="https://themes.getbootstrap.com/pages/terms-of-service" target="_blank">Terms</a></p>
       </footer>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
