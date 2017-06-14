{include file="header.tpl"}
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
              <a class="navbar-brand" href="index.php">MMA Championship</a>
            </div>
            <div id="navbar" class="collapse navbar-collapse">
              <ul class="nav navbar-nav">
                <li><a href="index.php">Home</a></li>
                <li><a href="torneos.php">Torneos</a></li>
                <li class="active"><a href="luchadores.php">Luchadores</a></li>
                <li><a href="contacto.php">Contacto</a></li>
              </ul>
            </div><!--/.nav-collapse -->
          </div>
        </nav>
      </div>
    </div><!-- /.navbar-wrapper -->

<div ID="contenido">
    <div class="container">
      <div class="row">
        <div class="col-md-4 col-md-offset-4 col-xs-12 col-sm-12">
          <div class="list-group">
            {foreach $champions as $champion}
            <a href="{$link}" target="_blank" class="list-group-item">
              <span class="badge">{$n}</span>
              {$champion}
            </a>
            {/foreach}
          </div>
        </div>
      </div>
    </div><!-- /.container -->
</div>
{include file="footer.tpl"}
