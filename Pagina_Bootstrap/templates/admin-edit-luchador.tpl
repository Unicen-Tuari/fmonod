<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Edicion Luchador</title>
    <base href="{$baseDir}">
  </head>
  <body>
  <div class="col-md-10 content collapse in" id="al">
    <div class="panel panel-default">
      <div class="panel-heading">
        Editar Luchador
      </div>
    <form name="form" action="admin/modificar/luchadores/{$luchador.id_luchador}" method="post">
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Nombre</span>
            <input type="text" class="form-control" aria-label="..." name="nombre" value="{$luchador.nombre}">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Apellido</span>
            <input type="text" class="form-control" aria-label="..." name="apellido" value="{$luchador.apellido}">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Edad</span>
            <input type="text" class="form-control" aria-label="..." name="edad" value="{$luchador.edad}">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Categoria</span>
            <input type="text" class="form-control" aria-label="..." name="categoria" value="{$luchador.id_categoria}">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Pais</span>
            <input type="text" class="form-control" aria-label="..." name="pais" value="{$luchador.pais}">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Historia</span>
            <input type="text" class="form-control" aria-label="..." name="historia" value="{$luchador.historia}">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Link</span>
            <input type="text" class="form-control" aria-label="..." name="link" value="{$luchador.link}">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Torneos Ganados</span>
            <input type="text" class="form-control" aria-label="..." name="torneos_ganados" value="{$luchador.torneos_ganados}">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <button class="btn btn-success" type="submit">
        <span class="glyphicon glyphicon-upload"></span>
      </button>
      <a href="admin/listar/luchadores#ml" class="btn btn-warning">
        <span class="glyphicon glyphicon-arrow-left"></span>
      </a>
    </form>
    </div>
  </div>
  </body>
</html>
