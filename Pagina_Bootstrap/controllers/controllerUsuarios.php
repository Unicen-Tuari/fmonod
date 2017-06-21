<?php
require_once('views/viewUsuarios.php');
require_once('models/modelUsuarios.php');

class ControllerUsuarios
{
  private $vista;
  private $modelo;

  function __construct()
  {
      $this->vista = new ViewUsuarios();
      $this->modelo = new ModelUsuarios();
  }

  function ctrlVistaUsuarios(){
    //$consultas = $this->modelo->GetConsultas();
    $this->vista->mostrarRegistro("Registro");
  }

  function InsertarUsuario(){
    //Chequea que tenga un nombre
    if(isset($_POST["username"]) && strlen(trim($_POST["username"])) > 0)
    {
      $nombre_usuario = $_POST["username"];
      $password = $_POST["password"];
      $confirm = $_POST["confirm-password"];
      $hash = password_hash($password, PASSWORD_DEFAULT);
      if($password == $confirm){
      $this->modelo->InsertarUsuario($nombre_usuario, $hash);
      header('Location: ../inicio');
      die();
      }
      else{
        echo "ERROR: LAS CONTRASEÑAS NO COINCIDEN";
      }
    }
    else {
      echo "ERROR: NO SE HA INSERTADO UN NOMBRE DE USUARIO";
    }

  }

 function GetLogin(){
    $nombre_usuario = $_POST["user"];
    $password = $_POST["password"];
    if(isset($nombre_usuario) && isset($password)){
      $datos = $this->modelo->GetLogin($nombre_usuario);
      //var_dump($datos);
    $hash = $datos["password"];
    if (password_verify($password, $hash)){
     echo "Bienvenido ". $nombre_usuario;
     session_start();
     header('Location: ../inicio');
     die();
     }
     else
     echo "Credenciales invalidas";
    }
  }

  function SessionCheck(){
  session_start();
  $user_check = $_SESSION['user'];
  if(!isset($_SESSION['user'])){
      header('Location: ../inicio');
   }
  }

  function LogOut(){
    session_start();

   if(session_destroy()) {
      header('Location: ../inicio');
   }
  }

  function consolaAdmin(){
    //$consultas = $this->modelo->GetConsultas();
    $this->vista->mostrarAdministracion("Administracion");
  }
}
?>
