<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Edicion Torneo</title>
    <base href="{$baseDir}">
  </head>
  <body>
  <div class="col-md-10 content collapse in" id="al">
    <div class="panel panel-default">
      <div class="panel-heading">
        Editar Torneo
      </div>
    <form name="form" action="admin/modificar/torneos/{$torneo.id_torneo}" method="post">
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Nombre Torneo</span>
            <input type="text" class="form-control" aria-label="..." name="nombre_torneo" value="{$torneo.nombre_torneo}">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Lugar</span>
            <input type="text" class="form-control" aria-label="..." name="lugar" value="{$torneo.lugar}">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Fecha</span>
            <input type="text" class="form-control" aria-label="..." name="fecha_torneo" value="{$torneo.fecha_torneo}">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <button class="btn btn-success" type="submit">
        <span class="glyphicon glyphicon-upload"></span>
      </button>
      <a href="admin/listar/torneos" class="btn btn-warning">
        <span class="glyphicon glyphicon-arrow-left"></span>
      </a>
    </form>
    </div>
  </div>
  </body>
</html>
