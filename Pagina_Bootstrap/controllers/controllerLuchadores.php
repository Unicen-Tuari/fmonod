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
    $this->vista->mostrarLuchadores("Informacion Luchadores", $luchadoresAMostrar,0,0,0);
    }
    else{
    $this->vista->mostrarLuchadores("Informacion Luchadores", $luchadoresAMostrar,$_SESSION['loggedin'],$_SESSION['username'],$_SESSION['admin']);
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

  function modificarLuchador($id_luchador){
    $nombre = $_POST["nombre"];
    $apellido = $_POST["apellido"];
    $edad = $_POST["edad"];
    $categoria = $_POST["categoria"];
    $pais = $_POST["pais"];
    $historia = $_POST["historia"];
    $link= $_POST["link"];
    $torneos_ganados = $_POST["torneos_ganados"];
    $this->modelo->ModificarLuchador($id_luchador,$nombre,$apellido,$edad,$categoria,$pais,$historia,$link,$torneos_ganados);
    $this->cargarLuchadoresVista();
  }

  function borrarLuchador(){
    $id_luchador = $_POST["id_luchador"];
    $this->modelo->BorrarLuchador($id_luchador);
  }

  function eliminarLuchador($id_luchador){
    $this->modelo->BorrarLuchador($id_luchador);
    $this->cargarLuchadoresVista();
  }

  function getLuchadores(){
    $datos = $this->modelo->GetLuchadores();
    $luchadores = array();
    foreach ($datos as $dato) {
        $luchadores[]= $dato;
    }
    return $luchadores;
  }

  function cargarLuchadoresVista(){
    $luchadores = $this->getLuchadores();
    $this->vista->cargarVistaAdmin($luchadores);
  }

  function cargarEditarLuchador($id){
    $luchador = $this->modelo->GetLuchador($id);
    $this->vista->cargarVistaEditarAdmin($luchador);
  }

}
?>
