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

  function mostrarAdministracionDatos($titulo,$datos){
    if (!isset($datos)) {
      $this->mostrarAdministracion($titulo);
    }
    else {
      $this->smarty->assign("titulo", $titulo);
      $this->smarty->assign("datos", $datos);
      $this->smarty->assign("baseDir", $this->baseDir);

      $this->smarty->display('adminContent.tpl');
    }
  }

  function mostrarAdministracion($titulo){
    $this->smarty->assign("titulo", $titulo);
    $this->smarty->assign("baseDir", $this->baseDir);
    //$this->smarty->caching = true;
    //$this->smarty->cache_lifetime = 30;

    $this->smarty->display('admin.tpl');
  }

  function mostrarAdminError(){
    $this->smarty->assign("baseDir", $this->baseDir);

    $this->smarty->display('adminError.tpl');
  }

  function mostrarRegisterTrue(){
    $this->smarty->assign("baseDir", $this->baseDir);

    $this->smarty->display('registerTrue.tpl');
  }

  function cargarVista($usuarios){
    $this->smarty->assign("usuarios", $usuarios);
    $this->smarty->assign("baseDir", $this->baseDir);
    //$this->smarty->error_reporting = E_ALL & ~E_NOTICE;
    //$this->smarty->debugging = true;
    //echo "<pre>";
    //print_r($datos);
    $this->smarty->display('edicion-usuarios.tpl');
  }
}
?>
