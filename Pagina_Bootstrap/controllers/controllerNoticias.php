<?php
require_once('views/viewNoticias.php');
require_once('models/modelNoticias.php');

class ControllerNoticias
{
  private $vista;
  private $modelo;

  function __construct()
  {
      $this->vista = new ViewNoticias();
      $this->modelo = new ModelNoticias();
  }

  function ctrlVistaNoticias(){
    $noticias = $this->modelo->GetNoticias();
    $noticiasAMostrar = array();
    foreach ($noticias as $noticia) {
        $noticiasAMostrar[]= $noticia;
    }
    if (session_status() == PHP_SESSION_NONE) {
        session_start();
        //print_r($_SESSION);
        if ($_SESSION == null) {
          $this->vista->mostrarNoticias("Noticias MMA", $noticiasAMostrar,0,0);
        }
        else{
        $this->vista->mostrarNoticias("Noticias MMA", $noticiasAMostrar,$_SESSION['loggedin'],$_SESSION['username']);
        }
    }
    else {
      //print_r($_SESSION);
      if ($_SESSION == null) {
        $this->vista->mostrarNoticias("Noticias MMA", $noticiasAMostrar,0,0);
      }
      else{
      $this->vista->mostrarNoticias("Noticias MMA", $noticiasAMostrar,$_SESSION['loggedin'],$_SESSION['username']);
      }
    }
  }
}
?>
