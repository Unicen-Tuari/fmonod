<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Edicion Torneos</title>
    <base href="{$baseDir}">
  </head>
  <body>
<div class="col-md-10 content collapse in" id="mt">
<div class="panel panel-default">
  <div class="panel-heading">
    Editar Torneo
  </div>
  {foreach $torneos as $torneo}
  <table id="dataTable" class="table table-striped table-bordered" cellspacing="0" width="100%">
      <thead>
          <tr>
              <th>Nombre Torneo</th>
              <th>Lugar</th>
              <th>Fecha</th>
              <th>Accion</th>
          </tr>
      </thead>
      <tbody>
          <tr>
              <td>{$torneo.nombre_torneo}</td>
              <td>{$torneo.lugar}</td>
              <td>{$torneo.fecha_torneo}</td>
              <td>
                <div class="btn-toolbar" role="toolbar" aria-label="...">
              <a href="admin/modificar/torneos/{$torneo.id_torneo}" class="btn btn-info">
                  <span class="glyphicon glyphicon-edit"></span>
                </a>
              <a href="admin/borrar/torneos/{$torneo.id_torneo}" class="btn btn-danger">
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
