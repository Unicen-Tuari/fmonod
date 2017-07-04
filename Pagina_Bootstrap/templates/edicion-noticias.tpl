<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Edicion Noticias</title>
    <base href="{$baseDir}">
  </head>
  <body>
<div class="col-md-10 content collapse in" id="mn">
<div class="panel panel-default">
  <div class="panel-heading">
    Editar Noticia
  </div>
  {foreach $noticias as $noticia}
  <table id="dataTable" class="table table-striped table-bordered" cellspacing="0" width="100%">
      <thead>
          <tr>
              <th>Titulo</th>
              <th>Titulo (Muted)</th>
              <th>Detalle</th>
              <th>Imagen</th>
              <th>Autor</th>
              <th>Accion</th>
          </tr>
      </thead>
      <tbody>
          <tr>
              <td>{$noticia.titulo}</td>
              <td>{$noticia.titulo_muted}</td>
              <td>{$noticia.detalle|truncate:30}</td>
              <td>{$noticia.imagen}</td>
              <td>{$noticia.autor}</td>
              <td>
                <div class="btn-toolbar" role="toolbar" aria-label="...">
              <a href="admin/modificar/noticias/{$noticia.id_noticia}" class="btn btn-info">
                  <span class="glyphicon glyphicon-edit"></span>
                </a>
              <a href="admin/borrar/noticias/{$noticia.id_noticia}" class="btn btn-danger">
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
