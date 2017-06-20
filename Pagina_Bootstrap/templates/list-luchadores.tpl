{include file="header.tpl"}
<div ID="contenido">
    <div class="container">
      <div class="row">
        <div class="col-md-4 col-md-offset-4 col-xs-12 col-sm-12">
          <div class="list-group">
            {foreach $luchadores as $luchador}
            <a href="{$luchador.link}" target="_blank" class="list-group-item">
              <span class="badge">{$luchador.torneos_ganados}</span>
              {$luchador.historia}
            </a>
            {/foreach}
          </div>
        </div>
      </div>
    </div><!-- /.container -->
</div>
{include file="footer.tpl"}
