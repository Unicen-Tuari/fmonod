<?php
  require_once('controllers/controllerNoticias.php');
  require_once('controllers/ControllerTorneos.php');
  require_once('controllers/controllerLuchadores.php');
  require_once('controllers/controllerConsultas.php');

  //$controller = new ControllerNoticias();
  //$controller->ctrlVistaNoticias();
  //$controllertor = new ControllerTorneos();
  //$controllertor->ctrlVistaTorneos();
  //$controllerluc = new ControllerLuchadores();
  //$controllerluc->ctrlVistaLuchadores();
  $controllercon = new ControllerConsultas();
  $controllercon->ctrlVistaConsultas();
?>
