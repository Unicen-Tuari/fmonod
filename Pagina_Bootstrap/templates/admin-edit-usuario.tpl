<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Edicion Usuario</title>
    <base href="{$baseDir}">
  </head>
  <body>
  <div class="col-md-10 content collapse in" id="al">
    <div class="panel panel-default">
      <div class="panel-heading">
        Editar Usuario
      </div>
    <form name="form" action="admin/modificar/usuario/{$usuario.id_usuario}" method="post">
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Nombre Usuario</span>
            <input type="text" class="form-control" aria-label="..." name="username" value="{$usuario.nombre_usuario}">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Contraseña</span>
            <input type="text" class="form-control" aria-label="..." name="pass" value="{$usuario.password}">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Administrador</span>
            <input type="text" class="form-control" aria-label="..." name="administrator" value="{$usuario.administrador}">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <button class="btn btn-success" type="submit">
        <span class="glyphicon glyphicon-upload"></span>
      </button>
      <a href="admin/listar/usuario" class="btn btn-warning">
        <span class="glyphicon glyphicon-arrow-left"></span>
      </a>
    </form>
    </div>
  </div>
  </body>
</html>
