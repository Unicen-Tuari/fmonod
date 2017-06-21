<?php
  require_once('libs/Smarty.class.php');
/**
 *
 */
class ViewUsuarios
{
  private $smarty;
  private $baseDir;

  function __construct()
  {
    $this->smarty = new Smarty;
    $this->baseDir = 'http://'.$_SERVER['SERVER_NAME'] . dirname($_SERVER['PHP_SELF']).'/';
  }

  function mostrarRegistro($titulo){
    $this->smarty->assign("titulo", $titulo);
    $this->smarty->assign("baseDir", $this->baseDir);

    $this->smarty->display('registro.tpl');
  }

  function mostrarAdministracion($titulo){
    $this->smarty->assign("titulo", $titulo);
    $this->smarty->assign("baseDir", $this->baseDir);

    $this->smarty->display('admin.tpl');
  }

}
?>
