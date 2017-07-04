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
