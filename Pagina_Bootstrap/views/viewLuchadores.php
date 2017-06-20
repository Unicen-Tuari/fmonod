<?php
  require_once('libs/Smarty.class.php');
/**
 *
 */
class ViewLuchadores
{
  private $smarty;
  private $baseDir;

  function __construct()
  {
    $this->smarty = new Smarty;
    $this->baseDir = 'http://'.$_SERVER['SERVER_NAME'] . dirname($_SERVER['PHP_SELF']).'/';
  }

  function mostrarLuchadores($titulo, $luchadores){
    $this->smarty->assign("titulo", $titulo);
    $this->smarty->assign("luchadores", $luchadores);
    $this->smarty->assign("baseDir", $this->baseDir);

    $this->smarty->display('list-luchadores.tpl');
  }

}
?>
