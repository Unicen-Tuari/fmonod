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
              </tr>
            </thead>
            <tbody>
              {foreach from=$torneos item=torneo}
              <tr>
                {foreach from=$torneo item=nombre item=fecha}
                <td>
                  {$nombre}
                </td>
                <td>
                  {$fecha}
                </td>
              </tr>
              {/foreach}
            </tbody>
            {/foreach}
          </table>
        </div>
      </div>
    </div><!-- /.container -->
</div>
{include file="footer.tpl"}
