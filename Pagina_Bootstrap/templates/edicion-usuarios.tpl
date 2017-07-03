<div class="col-md-10 content collapse" id="mu">
<div class="panel panel-default">
  <div class="panel-heading">
    Editar Usuario
  </div>
<form name="form" action="admin/modificar/usuario/true" method="post">
  <div class="row">
    <div class="col-lg-6">
      <div class="input-group">
        <span class="input-group-addon" id="basic-addon3">ID Usuario</span>
        <div class="input-group-btn">
          <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Numero <span class="caret"></span></button>
          <ul class="dropdown-menu">
          {foreach $usuarios as $item}
          <li><a name="id_usuario">{$item['id_usuario'] }</a></li>
          {/foreach}
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
        <input type="email" class="form-control" aria-label="..." name="username" value="{$usuarios[0][0]}">
      </div><!-- /input-group -->
    </div><!-- /.col-lg-6 -->
  </div><!-- /.row -->
  <p><!-- Divider --></p>
  <div class="row">
    <div class="col-lg-6">
      <div class="input-group">
        <span class="input-group-addon" id="basic-addon3" >Contraseña</span>
        <input type="password" class="form-control" aria-label="..." name="pass" value="{$usuarios[0][1]}">
      </div><!-- /input-group -->
    </div><!-- /.col-lg-6 -->
  </div><!-- /.row -->
  <p><!-- Divider --></p>
  <div class="row">
    <div class="col-lg-6">
      <div class="input-group">
        <span class="input-group-addon" id="basic-addon3" name="administrator">Administrador</span>
        <input type="text" class="form-control" aria-label="..." value="{$usuarios[0][2]}">
      </div><!-- /input-group -->
    </div><!-- /.col-lg-6 -->
  </div><!-- /.row -->
  <p><!-- Divider --></p>
  <div class="panel-body">
    Para modificar, cargue los datos con el boton celeste.
  </div>
  <button class="btn btn-primary" type="submit">
    <span class="glyphicon glyphicon-ok"></span>
  </button>
  <a href="admin/" class="btn btn-danger">
    <span class="glyphicon glyphicon-remove"></span>
  </a>
  <a href="admin/modificar/usuario" class="btn btn-info">
    <span class="glyphicon glyphicon-cloud-download"></span>
  </a>
  </form>
</div>
</div>

<div class="col-md-10 content collapse" id="au">
<div class="panel panel-default">
  <div class="panel-heading">
    Agregar Usuario
  </div>
<form name="form" action="admin/agregar/usuario/true" method="post">
  <div class="row">
    <div class="col-lg-6">
      <div class="input-group">
        <span class="input-group-addon" id="basic-addon3">Nombre Usuario</span>
        <input type="email" class="form-control" aria-label="..." name="username">
      </div><!-- /input-group -->
    </div><!-- /.col-lg-6 -->
  </div><!-- /.row -->
  <p><!-- Divider --></p>
  <div class="row">
    <div class="col-lg-6">
      <div class="input-group">
        <span class="input-group-addon" id="basic-addon3" >Contraseña</span>
        <input type="password" class="form-control" aria-label="..." name="pass">
      </div><!-- /input-group -->
    </div><!-- /.col-lg-6 -->
  </div><!-- /.row -->
  <p><!-- Divider --></p>
  <div class="row">
    <div class="col-lg-6">
      <div class="input-group">
        <span class="input-group-addon" id="basic-addon3" name="administrator">Administrador</span>
        <input type="text" class="form-control" aria-label="...">
      </div><!-- /input-group -->
    </div><!-- /.col-lg-6 -->
  </div><!-- /.row -->
  <p><!-- Divider --></p>
  <button class="btn btn-success" type="submit">
    <span class="glyphicon glyphicon-upload"></span>
  </button>
  <a href="admin/" class="btn btn-danger">
    <span class="glyphicon glyphicon-remove"></span>
  </a>
  </form>
</div>
</div>
