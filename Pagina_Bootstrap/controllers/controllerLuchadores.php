<?php
require_once('/../views/viewLuchadores.php');
require_once('/../models/modelLuchadores.php');
//TODO Quitar el back path

class ControllerLuchadores
{
  private $vista;
  private $modelo;

  function __construct()
  {
      $this->vista = new ViewLuchadores();
      $this->modelo = new ModelLuchadores();
  }

  function ctrlVistaLuchadores(){
    $luchadores = $this->modelo->GetLuchadores();
    $luchadoresAMostrar = array();
    foreach ($luchadores as $luchador) {
        $luchadoresAMostrar[] = $luchador;
    }
    $this->vista->mostrarLuchadores("Informacion Luchadores", $luchadoresAMostrar);
  }

}
?>
