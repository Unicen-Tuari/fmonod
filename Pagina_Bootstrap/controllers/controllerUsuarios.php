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
      header('Location: ../../inicio/registrado');
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
    $hash = $datos["password"];
    $admin = $datos["administrador"];
      if (password_verify($password, $hash)){
       session_start();
       $_SESSION['loggedin'] = true;
       $_SESSION['username'] = $nombre_usuario;
       $_SESSION['admin'] = $admin;
       session_write_close();
       }
     else
     echo "Credenciales invalidas";
    }
    else {
      header('Location: ../inicio');
    }
  }

  function checkearSesion(){
  session_start();
  $user_check = $_SESSION['username'];
  if(!isset($user_check)){
      header('Location: ../inicio');
   }
  }

  function LogOut(){
    session_start();
    session_destroy();
    header('Location: ../inicio');
  }

  function adminError(){
    $this->vista->mostrarAdminError();
  }

  function consolaAdmin(){
    $this->vista->mostrarAdministracion("Administracion");
  }

  function registerTrue(){
    $this->vista->mostrarRegisterTrue();
  }

  function agregarUsuario(){
    $nombre_usuario = $_POST["username"];
    $password = $_POST["pass"];
    $admin = (isset($_POST["administrator"])) ? $_POST["administrator"] : null ;
    $hash = password_hash($password, PASSWORD_DEFAULT);
    $this->modelo->InsertarUsuarioAdmin($nombre_usuario,$hash,$admin);
  }

  function modificarUsuario(){
    $usuarios = array();
    $usuarios = $this->getUsuarios();
    $this->vista->mostrarAdministracionDatos("Administracion",$usuarios);
    $nombre_usuario = $_POST["username"];
    $password = $_POST["pass"];
    $admin = (isset($_POST["administrator"])) ? $_POST["administrator"] : null ;
    $hash = password_hash($password, PASSWORD_DEFAULT);
    $this->modelo->ModificarUsuario($_POST["id_usuario"],$nombre_usuario,$hash,$admin);
  }

  function borrarUsuario(){
    $this->vista->mostrarRegisterTrue();
  }

  function getUsuarios(){
    $datos = $this->modelo->GetUsuarios();
    $usuarios = array();
    foreach ($datos as $dato) {
        $usuarios[]= $dato;
    }
    return $usuarios;
  }
}
?>
