{include file="header.tpl"}
<div ID="contenido">
      <div class="container">
        <div class="row">
          <div class="col-md-4 col-md-offset-4 col-xs-12 col-sm-12">
            <div class="list-group">
            {foreach $luchadores as $luchador}
              <a class="list-group-item" data-toggle="collapse" data-target="#campeon{$luchador.id_luchador}">
                <span class="badge">{$luchador.torneos_ganados}</span>
                {$luchador.nombre} {$luchador.apellido} - {$luchador.pais}
              </a>
              <div class="collapse" id="campeon{$luchador.id_luchador}">
                <div class="well">
                  {$luchador.historia}
                  <p><!-- Divider--></p>
                  <a class="btn btn-primary" type="button" href="{$luchador.link}" target="_blank">
                    Ver Pelea
                  </a>
                </div>
              </div>
            {/foreach}
          </div>
        </div>
      </div>
  </div><!-- /.container -->
</div>
{include file="footer.tpl"}
