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

  function agregarLuchador(){
    $nombre = $_POST["nombre"];
    $apellido = $_POST["apellido"];
    $edad = $_POST["edad"];
    $categoria = $_POST["categoria"];
    $pais = $_POST["pais"];
    $historia = $_POST["historia"];
    $link= $_POST["link"];
    $torneos_ganados = $_POST["torneos_ganados"];
    $this->modelo->InsertarLuchador($nombre, $apellido, $edad, $categoria, $pais, $historia, $link, $torneos_ganados);
  }

}
?>
