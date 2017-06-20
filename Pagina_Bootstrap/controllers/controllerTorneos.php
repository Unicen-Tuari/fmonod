<?php
require_once('views/viewTorneos.php');
require_once('models/modelTorneos.php');

class ControllerTorneos
{
  private $vista;
  private $modelo;

  function __construct()
  {
      $this->vista = new ViewTorneos();
      $this->modelo = new ModelTorneos();
  }

  function ctrlVistaTorneos(){
    $torneos = $this->modelo->GetTorneos();
    $torneosAMostrar = array();
    foreach ($torneos as $torneo) {
        $torneosAMostrar[]= $torneo;
    }
    $this->vista->mostrarTorneos("Fechas Torneos", $torneosAMostrar);
  }
}
?>
