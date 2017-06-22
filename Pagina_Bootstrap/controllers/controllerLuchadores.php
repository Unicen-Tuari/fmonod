<?php
require_once('views/viewLuchadores.php');
require_once('models/modelLuchadores.php');

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
    session_start();
    if ($_SESSION == null) {
    $this->vista->mostrarLuchadores("Informacion Luchadores", $luchadoresAMostrar,0,0);
    }
    else{
    $this->vista->mostrarLuchadores("Informacion Luchadores", $luchadoresAMostrar,$_SESSION['loggedin'],$_SESSION['username']);
    }
  }

}
?>
