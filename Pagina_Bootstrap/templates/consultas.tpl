{include file="header.tpl"}
<div ID="contenido">
  <div class="container">
    <div class="row">
      <div class="col-md-4 col-md-offset-4 col-xs-12 col-sm-12">
        <form class="form-horizontal" action="contacto/agregar" method="post">
          <div class="form-group">
            <label for="name">Nombre y Apellido</label>
            <input type="text" class="form-control" name="name" placeholder="Juan Perez">
          </div>
          <div class="form-group">
            <label for="email">Email</label>
            <input type="email" class="form-control" name="email" placeholder="juanperez@gmail.com">
          </div>
          <div class="form-group">
            <label for="consulta">Consulta</label>
            <textarea class="form-control" rows="3" name="consulta"></textarea>
            <p class="help-block">Ingrese su consulta sobre torneos</p>
          </div>
          <button type="submit" class="btn btn-default">Enviar</button>
        </form>
      </div>
    </div>
  </div><!-- /.container -->
</div>
{include file="footer.tpl"}
