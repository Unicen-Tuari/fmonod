<div class="col-md-10 content collapse" id="ml">
<div class="panel panel-default">
  <div class="panel-heading">
    Modificar Luchador
  </div>
  <form name="form" action="admin/modificar/luchadores/true" method="post">
  {foreach name=outer item=luchador from=$luchadores}
    {foreach key=key item=item from=$luchador}
  <div class="row">
    <div class="col-lg-6">
      <div class="input-group">
        <span class="input-group-addon" id="basic-addon3">Nombre</span>
        <input type="text" class="form-control" aria-label="..." name="nombre" value="{$item.nombre}">
      </div><!-- /input-group -->
    </div><!-- /.col-lg-6 -->
  </div><!-- /.row -->
  <p><!-- Divider --></p>
  <div class="row">
    <div class="col-lg-6">
      <div class="input-group">
        <span class="input-group-addon" id="basic-addon3">Apellido</span>
        <input type="text" class="form-control" aria-label="..." name="apellido" value="{$item.apellido}">
      </div><!-- /input-group -->
    </div><!-- /.col-lg-6 -->
  </div><!-- /.row -->
  <p><!-- Divider --></p>
  <div class="row">
    <div class="col-lg-6">
      <div class="input-group">
        <span class="input-group-addon" id="basic-addon3">Edad</span>
        <input type="text" class="form-control" aria-label="..." name="edad" value="{$item.edad}">
      </div><!-- /input-group -->
    </div><!-- /.col-lg-6 -->
  </div><!-- /.row -->
  <p><!-- Divider --></p>
  <div class="row">
    <div class="col-lg-6">
      <div class="input-group">
        <span class="input-group-addon" id="basic-addon3">Categoria</span>
        <input type="text" class="form-control" aria-label="..." name="categoria" value="{$item.categoria}">
      </div><!-- /input-group -->
    </div><!-- /.col-lg-6 -->
  </div><!-- /.row -->
  <p><!-- Divider --></p>
  <div class="row">
    <div class="col-lg-6">
      <div class="input-group">
        <span class="input-group-addon" id="basic-addon3">Pais</span>
        <input type="text" class="form-control" aria-label="..." name="pais" value="{$item.pais}">
      </div><!-- /input-group -->
    </div><!-- /.col-lg-6 -->
  </div><!-- /.row -->
  <p><!-- Divider --></p>
  <div class="row">
    <div class="col-lg-6">
      <div class="input-group">
        <span class="input-group-addon" id="basic-addon3">Historia</span>
        <input type="text" class="form-control" aria-label="..." name="historia" value="{$item.historia}">
      </div><!-- /input-group -->
    </div><!-- /.col-lg-6 -->
  </div><!-- /.row -->
  <p><!-- Divider --></p>
  <div class="row">
    <div class="col-lg-6">
      <div class="input-group">
        <span class="input-group-addon" id="basic-addon3">Link</span>
        <input type="text" class="form-control" aria-label="..." name="link" value="{$item.link}">
      </div><!-- /input-group -->
    </div><!-- /.col-lg-6 -->
  </div><!-- /.row -->
  <p><!-- Divider --></p>
  <div class="row">
    <div class="col-lg-6">
      <div class="input-group">
        <span class="input-group-addon" id="basic-addon3">Torneos Ganados</span>
        <input type="text" class="form-control" aria-label="..." name="torneos_ganados" value="{$item.torneos_ganados}">
      </div><!-- /input-group -->
    </div><!-- /.col-lg-6 -->
  </div><!-- /.row -->
  <p><!-- Divider --></p>
    {/foreach}
  {/foreach}
  <div class="panel-body">
    Para modificar, cargue los datos con el boton celeste.
  </div>
  <button class="btn btn-primary" type="submit">
    <span class="glyphicon glyphicon-ok"></span>
  </button>
  <a href="admin/" class="btn btn-danger">
    <span class="glyphicon glyphicon-remove"></span>
  </a>
  <a href="admin/modificar/luchadores" class="btn btn-info">
    <span class="glyphicon glyphicon-cloud-download"></span>
  </a>
  </form>
</div>
</div>

<div class="col-md-10 content collapse" id="bl">
<div class="panel panel-default">
  <div class="panel-heading">
    Borrar Luchador
  </div>
  <form name="form" action="admin/borrar/luchadores/true" method="post">
  <div class="row">
    <div class="col-lg-6">
      <div class="input-group">
        <span class="input-group-addon" id="basic-addon3">Nombre</span>
        <input type="text" class="form-control" aria-label="..." name="nombre">
      </div><!-- /input-group -->
    </div><!-- /.col-lg-6 -->
  </div><!-- /.row -->
  <p><!-- Divider --></p>
  <div class="row">
    <div class="col-lg-6">
      <div class="input-group">
        <span class="input-group-addon" id="basic-addon3">Apellido</span>
        <input type="text" class="form-control" aria-label="..." name="apellido">
      </div><!-- /input-group -->
    </div><!-- /.col-lg-6 -->
  </div><!-- /.row -->
  <p><!-- Divider --></p>
  <div class="row">
    <div class="col-lg-6">
      <div class="input-group">
        <span class="input-group-addon" id="basic-addon3">Edad</span>
        <input type="text" class="form-control" aria-label="..." name="edad">
      </div><!-- /input-group -->
    </div><!-- /.col-lg-6 -->
  </div><!-- /.row -->
  <p><!-- Divider --></p>
  <div class="row">
    <div class="col-lg-6">
      <div class="input-group">
        <span class="input-group-addon" id="basic-addon3">Categoria</span>
        <input type="text" class="form-control" aria-label="..." name="categoria">
      </div><!-- /input-group -->
    </div><!-- /.col-lg-6 -->
  </div><!-- /.row -->
  <p><!-- Divider --></p>
  <p><!-- Divider --></p>
  <div class="row">
    <div class="col-lg-6">
      <div class="input-group">
        <span class="input-group-addon" id="basic-addon3">Pais</span>
        <input type="text" class="form-control" aria-label="..." name="pais">
      </div><!-- /input-group -->
    </div><!-- /.col-lg-6 -->
  </div><!-- /.row -->
  <p><!-- Divider --></p>
  <div class="row">
    <div class="col-lg-6">
      <div class="input-group">
        <span class="input-group-addon" id="basic-addon3">Historia</span>
        <input type="text" class="form-control" aria-label="..." name="historia">
      </div><!-- /input-group -->
    </div><!-- /.col-lg-6 -->
  </div><!-- /.row -->
  <p><!-- Divider --></p>
  <div class="row">
    <div class="col-lg-6">
      <div class="input-group">
        <span class="input-group-addon" id="basic-addon3">Link</span>
        <input type="text" class="form-control" aria-label="..." name="link">
      </div><!-- /input-group -->
    </div><!-- /.col-lg-6 -->
  </div><!-- /.row -->
  <p><!-- Divider --></p>
  <div class="row">
    <div class="col-lg-6">
      <div class="input-group">
        <span class="input-group-addon" id="basic-addon3">Torneos Ganados</span>
        <input type="text" class="form-control" aria-label="..." name="torneos_ganados">
      </div><!-- /input-group -->
    </div><!-- /.col-lg-6 -->
  </div><!-- /.row -->
  <p><!-- Divider --></p>
  <div class="panel-body">
    Para borrar, cargue los datos con el boton celeste.
  </div>
  <button class="btn btn-warning" type="submit">
    <span class="glyphicon glyphicon-trash"></span>
  </button>
  <a href="admin/" class="btn btn-danger">
    <span class="glyphicon glyphicon-remove"></span>
  </a>
  <a href="admin/borrar/luchadores" class="btn btn-info">
    <span class="glyphicon glyphicon-cloud-download"></span>
  </a>
  </form>
</div>
</div>

<div class="col-md-10 content collapse" id="al">
<div class="panel panel-default">
  <div class="panel-heading">
    Agregar Luchador
  </div>
  <form name="form" action="admin/agregar/luchadores/true" method="post">
  <div class="row">
    <div class="col-lg-6">
      <div class="input-group">
        <span class="input-group-addon" id="basic-addon3">Nombre</span>
        <input type="text" class="form-control" aria-label="..." name="nombre">
      </div><!-- /input-group -->
    </div><!-- /.col-lg-6 -->
  </div><!-- /.row -->
  <p><!-- Divider --></p>
  <div class="row">
    <div class="col-lg-6">
      <div class="input-group">
        <span class="input-group-addon" id="basic-addon3">Apellido</span>
        <input type="text" class="form-control" aria-label="..." name="apellido">
      </div><!-- /input-group -->
    </div><!-- /.col-lg-6 -->
  </div><!-- /.row -->
  <p><!-- Divider --></p>
  <div class="row">
    <div class="col-lg-6">
      <div class="input-group">
        <span class="input-group-addon" id="basic-addon3">Edad</span>
        <input type="text" class="form-control" aria-label="..." name="edad">
      </div><!-- /input-group -->
    </div><!-- /.col-lg-6 -->
  </div><!-- /.row -->
  <p><!-- Divider --></p>
  <div class="row">
    <div class="col-lg-6">
      <div class="input-group">
        <span class="input-group-addon" id="basic-addon3">Categoria</span>
        <input type="text" class="form-control" aria-label="..." name="categoria">
      </div><!-- /input-group -->
    </div><!-- /.col-lg-6 -->
  </div><!-- /.row -->
  <p><!-- Divider --></p>
  <p><!-- Divider --></p>
  <div class="row">
    <div class="col-lg-6">
      <div class="input-group">
        <span class="input-group-addon" id="basic-addon3">Pais</span>
        <input type="text" class="form-control" aria-label="..." name="pais">
      </div><!-- /input-group -->
    </div><!-- /.col-lg-6 -->
  </div><!-- /.row -->
  <p><!-- Divider --></p>
  <div class="row">
    <div class="col-lg-6">
      <div class="input-group">
        <span class="input-group-addon" id="basic-addon3">Historia</span>
        <input type="text" class="form-control" aria-label="..." name="historia">
      </div><!-- /input-group -->
    </div><!-- /.col-lg-6 -->
  </div><!-- /.row -->
  <p><!-- Divider --></p>
  <div class="row">
    <div class="col-lg-6">
      <div class="input-group">
        <span class="input-group-addon" id="basic-addon3">Link</span>
        <input type="text" class="form-control" aria-label="..." name="link">
      </div><!-- /input-group -->
    </div><!-- /.col-lg-6 -->
  </div><!-- /.row -->
  <p><!-- Divider --></p>
  <div class="row">
    <div class="col-lg-6">
      <div class="input-group">
        <span class="input-group-addon" id="basic-addon3">Torneos Ganados</span>
        <input type="text" class="form-control" aria-label="..." name="torneos_ganados">
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
