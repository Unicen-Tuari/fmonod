<?php
  require_once('/../libs/Smarty.class.php');
  //TODO Quitar el back path
/**
 *
 */
class ViewTorneos
{
  private $smarty;
  private $baseDir;

  function __construct()
  {
    $this->smarty = new Smarty;
    $this->baseDir = 'http://'.$_SERVER['SERVER_NAME'] . dirname($_SERVER['PHP_SELF']).'/';
  }

  function mostrarLuchadores($titulo, $torneos){
    $this->smarty->assign("titulo", $titulo);
    $this->smarty->assign("luchadores", $torneos);
    $this->smarty->assign("baseDir", $this->baseDir);

    $this->smarty->display('table-torneos.tpl');
  }

}
?>
