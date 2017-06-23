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
    <link href="css/adminStyle.css" rel="stylesheet">

    <!-- Load Favicon -->
    <link href="favicon.ico" rel="shorcut icon">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
    <nav class="navbar navbar-default navbar-static-top">
        <div class="container-fluid">
    		<!-- Brand and toggle get grouped for better mobile display -->
    		<div class="navbar-header">
    			<button type="button" class="navbar-toggle navbar-toggle-sidebar collapsed">
    			MENU
    			</button>
    			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
    				<span class="sr-only">Toggle navigation</span>
    				<span class="icon-bar"></span>
    				<span class="icon-bar"></span>
    				<span class="icon-bar"></span>
    			</button>
    			<a class="navbar-brand" href="admin/">
    				Administracion
    			</a>
    		</div>

    		<!-- Collect the nav links, forms, and other content for toggling -->
    		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    			<form class="navbar-form navbar-left" method="GET" role="search">
    				<div class="form-group">
    					<input type="text" name="q" class="form-control" placeholder="Busqueda">
    				</div>
    				<button type="submit" class="btn btn-default"><i class="glyphicon glyphicon-search"></i></button>
    			</form>
    			<ul class="nav navbar-nav navbar-right">
    				<li class="dropdown">
    					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
    						Cuenta
    						<span class="caret"></span></a>
    						<ul class="dropdown-menu" role="menu">
    							<li class="dropdown-header">Herramientas</li>
    							<li class=""><a href="admin/">Perfil</a></li>
    							<li class=""><a href="admin/">Estadisticas</a></li>
    							<li class="divider"></li>
    							<li><a href="usuario/logout">Salir</a></li>
    						</ul>
    					</li>
    				</ul>
    			</div><!-- /.navbar-collapse -->
    		</div><!-- /.container-fluid -->
    	</nav>  	<div class="container-fluid main-container">
      		<div class="col-md-2 sidebar">
      			<div class="row">
    	<!-- uncomment code for absolute positioning tweek see top comment in css -->
    	<div class="absolute-wrapper"> </div>
    	<!-- Menu -->
    	<div class="side-menu">
    		<nav class="navbar navbar-default" role="navigation">
    			<!-- Main Menu -->
    			<div class="side-menu-container">
    				<ul class="nav navbar-nav">
    					<li class="active"><a href="admin/"><span class="glyphicon glyphicon-dashboard"></span> Tablero</a></li>

    					<!-- Dropdown-->
    					<li class="panel panel-default" id="dropdown">
    						<a data-toggle="collapse" href="#dropdown-lvl1">
    							<span class="glyphicon glyphicon-user"></span> Gestion Usuarios <span class="caret"></span>
    						</a>

    						<!-- Dropdown level 1 -->
    						<div id="dropdown-lvl1" class="panel-collapse collapse">
    							<div class="panel-body">
    								<ul class="nav navbar-nav">
    									<li><a href="admin/agregar">Agregar Usuario</a></li>
    									<li><a href="admin/modificar">Modificar Usuario</a></li>
    									<li><a href="admin/borrar">Borrar Usuario</a></li>

    									<!-- Dropdown level 2 -->
    									<li class="panel panel-default" id="dropdown">
    										<a data-toggle="collapse" href="#dropdown-lvl2">
    											<span class="glyphicon glyphicon-off"></span>Cambiar Permisos<span class="caret"></span>
    										</a>
    										<div id="dropdown-lvl2" class="panel-collapse collapse">
    											<div class="panel-body">
    												<ul class="nav navbar-nav">
    													<li><a href="admin/">Setear Usuario Administrador</a></li>
    													<li><a href="admin/">Setear Usuario Moderador</a></li>
    													<li><a href="admin/">Quitar Permisos</a></li>
    												</ul>
    											</div>
    										</div>
    									</li>
    								</ul>
    							</div>
    						</div>
    					</li>
              <!-- Dropdown Noticias -->
    					<li class="panel panel-default" id="dropdown">
    						<a data-toggle="collapse" href="#dropdown-noticias">
    							<span class="glyphicon glyphicon-cloud"></span> Gestion Noticias <span class="caret"></span>
    						</a>

    						<!-- Dropdown level 1 -->
    						<div id="dropdown-noticias" class="panel-collapse collapse">
    							<div class="panel-body">
    								<ul class="nav navbar-nav">
                      <li><a href="admin/agregar">Agregar Noticia</a></li>
    									<li><a href="admin/modificar">Modificar Noticia</a></li>
    									<li><a href="admin/borrar">Borrar Noticia</a></li>
    								</ul>
    							</div>
    						</div>
    					</li>

              <!-- Dropdown Torneos -->
    					<li class="panel panel-default" id="dropdown">
    						<a data-toggle="collapse" href="#dropdown-torneos">
    							<span class="glyphicon glyphicon-plane"></span> Gestion Torneos <span class="caret"></span>
    						</a>

    						<!-- Dropdown level 1 -->
    						<div id="dropdown-torneos" class="panel-collapse collapse">
    							<div class="panel-body">
    								<ul class="nav navbar-nav">
                      <li><a href="admin/agregar">Agregar Torneo</a></li>
    									<li><a href="admin/modificar">Modificar Torneo</a></li>
    									<li><a href="admin/borrar">Borrar Torneo</a></li>
    								</ul>
    							</div>
    						</div>
    					</li>
              <!-- Dropdown Luchadores -->
    					<li class="panel panel-default" id="dropdown">
    						<a data-toggle="collapse" href="#dropdown-luchadores">
    							<span class="glyphicon glyphicon-plus"></span> Gestion Luchadores <span class="caret"></span>
    						</a>

    						<!-- Dropdown level 1 -->
    						<div id="dropdown-luchadores" class="panel-collapse collapse">
    							<div class="panel-body">
    								<ul class="nav navbar-nav">
                      <li><a href="admin/agregar">Agregar Luchador</a></li>
    									<li><a href="admin/modificar">Modificar Luchador</a></li>
    									<li><a href="admin/borrar">Borrar Luchador</a></li>
    								</ul>
    							</div>
    						</div>
    					</li>
    				</ul>
    			</div><!-- /.navbar-collapse -->
    		</nav>
    	</div>
    </div>
  </div>
    {include file="adminContent.tpl"}
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/admin.js"></script>

  </body>
</html>
