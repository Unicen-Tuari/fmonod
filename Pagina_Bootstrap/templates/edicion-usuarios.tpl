<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Edicion Usuarios</title>
    <base href="{$baseDir}">
  </head>
  <body>
<div class="col-md-10 content collapse in" id="mu">
<div class="panel panel-default">
  <div class="panel-heading">
    Editar Usuario
  </div>
  {foreach $usuarios as $usuario}
  <table id="dataTable" class="table table-striped table-bordered" cellspacing="0" width="100%">
      <thead>
          <tr>
              <th>Nombre Usuario</th>
              <th>Contraseña</th>
              <th>Administrador</th>
              <th>Accion</th>
          </tr>
      </thead>
      <tbody>
          <tr>
              <td>{$usuario.nombre_usuario}</td>
              <td>{$usuario.password}</td>
              <td>{$usuario.administrador}</td>
              <td>
                <div class="btn-toolbar" role="toolbar" aria-label="...">
              <a href="admin/modificar/usuario/{$usuario.id_usuario}" class="btn btn-info">
                  <span class="glyphicon glyphicon-edit"></span>
                </a>
              <a href="admin/borrar/usuario/{$usuario.id_usuario}" class="btn btn-danger">
                  <span class="glyphicon glyphicon-floppy-remove"></span>
                </a>
                </div>
              </td>
          </tr>
      </tbody>
  </table>
  {/foreach}
  <a class="btn btn-primary" href="admin/">
    <span class="glyphicon glyphicon-ok"></span>
  </a>
</div>
</div>
</body>
</html>
