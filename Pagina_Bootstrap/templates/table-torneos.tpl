{include file="header.tpl"}
<div ID="contenido">
    <div class="container">
      <div class="row">
        <div class="col-md-4 col-md-offset-4 col-xs-12 col-sm-12">
          <table class="table table-striped">
            <thead>
              <tr>
                <th>
                  Nombre
                </th>
                <th>
                  Fechas
                </th>
                <th>
                  Lugar
                </th>
              </tr>
            </thead>
            <tbody>
              {foreach $torneos as $torneo}
              <tr>
                <td>
                  {$torneo.nombre_torneo}
                </td>
                <td>
                  {$torneo.fecha_torneo}
                </td>
                <td>
                  {$torneo.lugar}
                </td>
            </tbody>
            {/foreach}
          </table>
        </div>
      </div>
    </div><!-- /.container -->
</div>
{include file="footer.tpl"}
