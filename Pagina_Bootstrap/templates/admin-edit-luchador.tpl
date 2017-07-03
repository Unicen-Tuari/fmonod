<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
    <base href="{$baseDir}">
  </head>
  <body>
    <form name="form" action="admin/modificar/luchadores/{$luchador.id_luchador}" method="post">
      <label for="nombre">Nombre:</label>
      <input type="text" name="nombre" value="{$luchador.nombre}">
      <label for="apellido">Apellido:</label>
      <input type="text" name="apellido" value="{$luchador.apellido}">
      <label for="name">Edad:</label>
      <input type="text" name="edad" value="{$luchador.edad}">
      <input type="submit" value="Guardar"/>
    </form>
  </body>
</html>
