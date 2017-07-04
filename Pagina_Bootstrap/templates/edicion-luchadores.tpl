<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Edicion Luchadores</title>
    <base href="{$baseDir}">
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/adminStyle.css" rel="stylesheet">
  </head>
  <body>
    <div class="col-md-10 content" id="ml">
    <div class="panel panel-default">
    <div class="panel-heading">
      Editar Luchador
    </div>
    {foreach $luchadores as $luchador}
    <table id="dataTable" class="table table-striped table-bordered" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Edad</th>
                <th>Categoria</th>
                <th>Historia</th>
                <th>Link</th>
                <th>Torneos Ganados</th>
                <th>Accion</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>{$luchador.nombre}</td>
                <td>{$luchador.apellido}</td>
                <td>{$luchador.edad}</td>
                <td>{$luchador.id_categoria}</td>
                <td>{$luchador.historia|truncate:15}</td>
                <td>{$luchador.link}</td>
                <td>{$luchador.torneos_ganados}</td>
                <td>
                  <div class="btn-toolbar" role="toolbar" aria-label="...">
                <a href="admin/modificar/luchadores/{$luchador.id_luchador}" class="btn btn-info">
                    <span class="glyphicon glyphicon-edit"></span>
                  </a>
                <a href="admin/borrar/luchadores/{$luchador.id_luchador}" class="btn btn-danger">
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
    </form>
    </div>
    </div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/admin.js"></script>
</body>
</html>
