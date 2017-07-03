<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
    <base href="{$baseDir}">
  </head>
  <body>
    <table>
      <tr>
        <th>Nombre</th>
        <th>Apellido</th>
        <th>Edad</th>
      </tr>
      {foreach $luchadores as $luchador}
      <tr>
        <td>{$luchador.nombre}</td>
        <td>{$luchador.apellido}</td>
        <td>{$luchador.edad}</td>
        <td>
          <a href="admin/modificar/luchadores/{$luchador.id_luchador}">Editar</a>
          <a href="admin/borrar/luchadores/{$luchador.id_luchador}">Borrar</a>
        </td>
      </tr>
      {/foreach}
    </table>
  </body>
</html>
