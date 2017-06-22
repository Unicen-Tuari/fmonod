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
    			<a class="navbar-brand" href="usuario/admin">
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
    							<li class=""><a href="usuario/admin">Perfil</a></li>
    							<li class=""><a href="usuario/admin">Estadisticas</a></li>
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
    					<li class="active"><a href="usuario/admin"><span class="glyphicon glyphicon-dashboard"></span> Tablero</a></li>

    					<!-- Dropdown-->
    					<li class="panel panel-default" id="dropdown">
    						<a data-toggle="collapse" href="#dropdown-lvl1">
    							<span class="glyphicon glyphicon-user"></span> Gestion Usuarios <span class="caret"></span>
    						</a>

    						<!-- Dropdown level 1 -->
    						<div id="dropdown-lvl1" class="panel-collapse collapse">
    							<div class="panel-body">
    								<ul class="nav navbar-nav">
    									<li><a href="usuario/admin/agregar/usuario">Agregar Usuario</a></li>
    									<li><a href="usuario/admin/modificar/usuario">Modificar Usuario</a></li>
    									<li><a href="usuario/admin/borrar/usuario">Borrar Usuario</a></li>

    									<!-- Dropdown level 2 -->
    									<li class="panel panel-default" id="dropdown">
    										<a data-toggle="collapse" href="#dropdown-lvl2">
    											<span class="glyphicon glyphicon-off"></span>Cambiar Permisos<span class="caret"></span>
    										</a>
    										<div id="dropdown-lvl2" class="panel-collapse collapse">
    											<div class="panel-body">
    												<ul class="nav navbar-nav">
    													<li><a href="usuario/admin">Setear Usuario Administrador</a></li>
    													<li><a href="usuario/admin">Setear Usuario Moderador</a></li>
    													<li><a href="usuario/admin">Quitar Permisos</a></li>
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
    									<li><a href="usuario/admin/agregar/noticias">Agregar Noticia</a></li>
    									<li><a href="usuario/admin/modificar/noticias">Modificar Noticia</a></li>
    									<li><a href="usuario/admin/borrar/noticias">Borrar Noticia</a></li>
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
                      <li><a href="usuario/admin/agregar/torneos">Agregar Torneo</a></li>
    									<li><a href="usuario/admin/modificar/torneos">Modificar Torneo</a></li>
    									<li><a href="usuario/admin/borrar/torneos">Borrar Torneo</a></li>
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
                      <li><a href="usuario/admin/agregar/luchadores">Agregar Luchador</a></li>
    									<li><a href="usuario/admin/modificar/luchadores">Modificar Luchador</a></li>
    									<li><a href="usuario/admin/borrar/luchadores">Borrar Luchador</a></li>
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
    <div class="col-md-10 content">
      <div class="panel panel-default">
    	<div class="panel-heading">
    		Tablero
    	</div>
    	<div class="panel-body">
    		Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
    		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
    		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
    		consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
    		cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
    		proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
    	</div>
    </div>
  </div>
  <div class="col-md-10 content" id="mn">
    <div class="panel panel-default">
      <div class="panel-heading">
        Modificar Noticia
      </div>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">ID Noticia</span>
            <div class="input-group-btn">
              <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Numero <span class="caret"></span></button>
              <ul class="dropdown-menu">
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
              </ul>
            </div><!-- /btn-group -->
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Titulo</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Titulo (Muted)</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Detalle</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Imagen</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Autor</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <a href="usuario/admin" class="btn btn-primary">
        <span class="glyphicon glyphicon-ok"></span>
      </a>
      <a href="usuario/admin" class="btn btn-danger">
        <span class="glyphicon glyphicon-remove"></span>
      </a>
    </div>
  </div>
  <div class="col-md-10 content" id="bn">
    <div class="panel panel-default">
      <div class="panel-heading">
        Borrar Noticia
      </div>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">ID Noticia</span>
            <div class="input-group-btn">
              <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Numero <span class="caret"></span></button>
              <ul class="dropdown-menu">
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
              </ul>
            </div><!-- /btn-group -->
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Titulo</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Titulo (Muted)</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Detalle</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Imagen</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Autor</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <a href="usuario/admin" class="btn btn-warning">
        <span class="glyphicon glyphicon-trash"></span>
      </a>
      <a href="usuario/admin" class="btn btn-danger">
        <span class="glyphicon glyphicon-remove"></span>
      </a>
    </div>
  </div>
  <div class="col-md-10 content" id="an">
    <div class="panel panel-default">
      <div class="panel-heading">
        Agregar Noticia
      </div>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Titulo</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Titulo (Muted)</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Detalle</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Imagen</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Autor</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <a href="usuario/admin" class="btn btn-success">
        <span class="glyphicon glyphicon-upload"></span>
      </a>
      <a href="usuario/admin" class="btn btn-danger">
        <span class="glyphicon glyphicon-remove"></span>
      </a>
    </div>
  </div>
  <div class="col-md-10 content" id="mn">
    <div class="panel panel-default">
      <div class="panel-heading">
        Modificar Torneo
      </div>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">ID Torneo</span>
            <div class="input-group-btn">
              <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Numero <span class="caret"></span></button>
              <ul class="dropdown-menu">
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
              </ul>
            </div><!-- /btn-group -->
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Nombre Torneo</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Lugar</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Fecha</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <a href="usuario/admin" class="btn btn-primary">
        <span class="glyphicon glyphicon-ok"></span>
      </a>
      <a href="usuario/admin" class="btn btn-danger">
        <span class="glyphicon glyphicon-remove"></span>
      </a>
    </div>
  </div>
  <div class="col-md-10 content" id="bn">
    <div class="panel panel-default">
      <div class="panel-heading">
        Borrar Torneo
      </div>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">ID Torneo</span>
            <div class="input-group-btn">
              <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Numero <span class="caret"></span></button>
              <ul class="dropdown-menu">
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
              </ul>
            </div><!-- /btn-group -->
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Nombre Torneo</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Lugar</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Fecha</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <a href="usuario/admin" class="btn btn-warning">
        <span class="glyphicon glyphicon-trash"></span>
      </a>
      <a href="usuario/admin" class="btn btn-danger">
        <span class="glyphicon glyphicon-remove"></span>
      </a>
    </div>
  </div>
  <div class="col-md-10 content" id="an">
    <div class="panel panel-default">
      <div class="panel-heading">
        Agregar Torneo
      </div>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Nombre Torneo</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Lugar</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Fecha</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <a href="usuario/admin" class="btn btn-success">
        <span class="glyphicon glyphicon-upload"></span>
      </a>
      <a href="usuario/admin" class="btn btn-danger">
        <span class="glyphicon glyphicon-remove"></span>
      </a>
    </div>
  </div>
  <div class="col-md-10 content" id="mn">
    <div class="panel panel-default">
      <div class="panel-heading">
        Modificar Luchador
      </div>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">ID Luchador</span>
            <div class="input-group-btn">
              <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Numero <span class="caret"></span></button>
              <ul class="dropdown-menu">
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
              </ul>
            </div><!-- /btn-group -->
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Nombre</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Apellido</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Edad</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Categoria</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Pais</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Historia</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Link</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Torneos Ganados</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <a href="usuario/admin" class="btn btn-primary">
        <span class="glyphicon glyphicon-ok"></span>
      </a>
      <a href="usuario/admin" class="btn btn-danger">
        <span class="glyphicon glyphicon-remove"></span>
      </a>
    </div>
  </div>
  <div class="col-md-10 content" id="bn">
    <div class="panel panel-default">
      <div class="panel-heading">
        Borrar Luchador
      </div>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">ID Luchador</span>
            <div class="input-group-btn">
              <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Numero <span class="caret"></span></button>
              <ul class="dropdown-menu">
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
              </ul>
            </div><!-- /btn-group -->
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Nombre</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Apellido</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Edad</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Categoria</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Pais</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Historia</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Link</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Torneos Ganados</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <a href="usuario/admin" class="btn btn-warning">
        <span class="glyphicon glyphicon-trash"></span>
      </a>
      <a href="usuario/admin" class="btn btn-danger">
        <span class="glyphicon glyphicon-remove"></span>
      </a>
    </div>
  </div>
  <div class="col-md-10 content" id="an">
    <div class="panel panel-default">
      <div class="panel-heading">
        Agregar Luchador
      </div>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Nombre</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Apellido</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Edad</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Categoria</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Pais</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Historia</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Link</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Torneos Ganados</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <a href="usuario/admin" class="btn btn-success">
        <span class="glyphicon glyphicon-upload"></span>
      </a>
      <a href="usuario/admin" class="btn btn-danger">
        <span class="glyphicon glyphicon-remove"></span>
      </a>
    </div>
  </div>
  <div class="col-md-10 content" id="mn">
    <div class="panel panel-default">
      <div class="panel-heading">
        Modificar Usuario
      </div>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">ID Usuario</span>
            <div class="input-group-btn">
              <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Numero <span class="caret"></span></button>
              <ul class="dropdown-menu">
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
              </ul>
            </div><!-- /btn-group -->
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Nombre Usuario</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Contraseña</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Administrador</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <a href="usuario/admin" class="btn btn-primary">
        <span class="glyphicon glyphicon-ok"></span>
      </a>
      <a href="usuario/admin" class="btn btn-danger">
        <span class="glyphicon glyphicon-remove"></span>
      </a>
    </div>
  </div>
  <div class="col-md-10 content" id="bn">
    <div class="panel panel-default">
      <div class="panel-heading">
        Borrar Usuario
      </div>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">ID Usuario</span>
            <div class="input-group-btn">
              <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Numero <span class="caret"></span></button>
              <ul class="dropdown-menu">
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
              </ul>
            </div><!-- /btn-group -->
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Nombre Usuario</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Contraseña</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Administrador</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <a href="usuario/admin" class="btn btn-warning">
        <span class="glyphicon glyphicon-trash"></span>
      </a>
      <a href="usuario/admin" class="btn btn-danger">
        <span class="glyphicon glyphicon-remove"></span>
      </a>
    </div>
  </div>
  <div class="col-md-10 content" id="an">
    <div class="panel panel-default">
      <div class="panel-heading">
        Agregar Usuario
      </div>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Nombre Usuario</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Contraseña</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Administrador</span>
            <input type="text" class="form-control" aria-label="...">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <a href="usuario/admin" class="btn btn-success">
        <span class="glyphicon glyphicon-upload"></span>
      </a>
      <a href="usuario/admin" class="btn btn-danger">
        <span class="glyphicon glyphicon-remove"></span>
      </a>
    </div>
  </div>



    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/admin.js"></script>

  </body>
</html>
