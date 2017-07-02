<?php
  require_once('libs/Smarty.class.php');
/**
 *
 */
class ViewConsultas
{
  private $smarty;
  private $baseDir;

  function __construct()
  {
    $this->smarty = new Smarty;
    $this->baseDir = 'http://'.$_SERVER['SERVER_NAME'] . dirname($_SERVER['PHP_SELF']).'/';
  }

  function mostrarContacto($titulo,$login,$username,$admin){
    $this->smarty->assign("titulo", $titulo);
    $this->smarty->assign("login", $login);
    $this->smarty->assign("username", $username);
    $this->smarty->assign("admin", $admin);
    $this->smarty->assign("baseDir", $this->baseDir);

    $this->smarty->display('consultas.tpl');
  }

}
?>
