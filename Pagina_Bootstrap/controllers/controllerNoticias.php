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
    $this->vista->mostrarNoticias("Noticias MMA", $noticiasAMostrar);
  }
}
?>
