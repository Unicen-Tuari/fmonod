<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Edicion Noticia</title>
    <base href="{$baseDir}">
  </head>
  <body>
  <div class="col-md-10 content collapse in" id="al">
    <div class="panel panel-default">
      <div class="panel-heading">
        Editar Noticia
      </div>
    <form name="form" action="admin/modificar/noticias/{$noticia.id_noticia}" method="post">
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Titulo</span>
            <input type="text" class="form-control" aria-label="..." name="titulo" value="{$noticia.titulo}">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Titulo (Muted)</span>
            <input type="text" class="form-control" aria-label="..." name="titulo_muted" value="{$noticia.titulo_muted}">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Detalle</span>
            <input type="text" class="form-control" aria-label="..." name="detalle" value="{$noticia.detalle}">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Autor</span>
            <input type="text" class="form-control" aria-label="..." name="autor" value="{$noticia.autor}">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <p><!-- Divider --></p>
      <div class="row">
        <div class="col-lg-6">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon3">Imagen</span>
            <input type="text" class="form-control" aria-label="..." name="imagen" value="{$noticia.imagen}">
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->
      </div><!-- /.row -->
      <p><!-- Divider --></p>
      <button class="btn btn-success" type="submit">
        <span class="glyphicon glyphicon-upload"></span>
      </button>
      <a href="admin/listar/noticias" class="btn btn-warning">
        <span class="glyphicon glyphicon-arrow-left"></span>
      </a>
    </form>
    </div>
  </div>
  </body>
</html>
