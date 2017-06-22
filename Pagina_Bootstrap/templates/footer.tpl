
    <!-- FOOTER -->
    <footer class="pull-footer">
      {if $titulo == "Informacion Luchadores"}
      <p><a href="luchadores">Back to top</a></p>
      {else}
      {if $titulo == "Fechas Torneos"}
      <p><a href="torneos">Back to top</a></p>
      {/if}
      {if $titulo == "Formulario de consultas"}
      <p><a href="contacto">Back to top</a></p>
      {/if}
      {/if}
      <p>&copy; 2017 Facundo Monod &middot; <a href="https://themes.getbootstrap.com/pages/privacy-policy" target="_blank">Privacy</a> &middot; <a href="https://themes.getbootstrap.com/pages/terms-of-service" target="_blank">Terms</a></p>
    </footer>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
