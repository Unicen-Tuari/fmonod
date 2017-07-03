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

  function mostrarLuchadores($titulo,$luchadores,$login,$username,$admin){
    $this->smarty->assign("titulo", $titulo);
    $this->smarty->assign("luchadores", $luchadores);
    $this->smarty->assign("login", $login);
    $this->smarty->assign("username", $username);
    $this->smarty->assign("admin", $admin);
    $this->smarty->assign("baseDir", $this->baseDir);

    $this->smarty->display('list-luchadores.tpl');
  }

  function cargarVista($luchadores){
    $this->smarty->assign("luchadores", $luchadores);
    $this->smarty->assign("baseDir", $this->baseDir);
    //$this->smarty->debugging = true;

    $this->smarty->display('edicion-luchadores.tpl');
  }

  function cargarVistaAdmin($luchadores){
    $this->smarty->assign("luchadores", $luchadores);
    $this->smarty->assign("baseDir", $this->baseDir);
    $this->smarty->display('edicion-luchadores.tpl');
  }

  function cargarVistaEditarAdmin($luchador){
    $this->smarty->assign("luchador", $luchador);
    $this->smarty->assign("baseDir", $this->baseDir);
    $this->smarty->display('admin-edit-luchador.tpl');
  }
}
?>
