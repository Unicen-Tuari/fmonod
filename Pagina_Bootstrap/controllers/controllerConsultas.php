<?php
require_once('views/viewConsultas.php');
require_once('models/modelConsultas.php');

class ControllerConsultas
{
  private $vista;
  private $modelo;

  function __construct()
  {
      $this->vista = new ViewConsultas();
      $this->modelo = new ModelConsultas();
  }

  function ctrlVistaConsultas(){
    //$consultas = $this->modelo->GetConsultas();
    $this->vista->mostrarContacto("Formulario de consultas");
  }
}
?>
