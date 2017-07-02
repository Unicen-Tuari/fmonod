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
    session_start();
    if ($_SESSION == null) {
    $this->vista->mostrarContacto("Formulario de consultas",0,0,0);
    }
    else{
    $this->vista->mostrarContacto("Formulario de consultas",$_SESSION['loggedin'],$_SESSION['username'],$_SESSION['admin']);
    }

  }

  function InsertarConsulta(){
    //Chequea que tenga un nombre
    if(isset($_POST["name"]) && strlen(trim($_POST["name"])) > 0)
    {
      $nombre_apellido = $_POST["name"];
      $email = $_POST["email"];
      $texto = $_POST["consulta"];
      $this->modelo->InsertarConsulta($nombre_apellido, $email,$texto);
    }
    else {
      echo "ERROR: NO SE HA INSERTADO UN NOMBRE";
    }
    $this->ctrlVistaConsultas();
    //header('Location: inicio');
  }
}
?>
