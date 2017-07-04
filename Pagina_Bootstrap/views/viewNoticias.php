<?php
  require_once('libs/Smarty.class.php');
/**
 *
 */
class ViewNoticias
{
  private $smarty;
  private $baseDir;

  function __construct()
  {
    $this->smarty = new Smarty;
    $this->baseDir = 'http://'.$_SERVER['SERVER_NAME'] . dirname($_SERVER['PHP_SELF']).'/';
  }

  function mostrarNoticias($titulo,$noticias,$login,$username,$admin){
    $this->smarty->assign("titulo", $titulo);
    $this->smarty->assign("noticias", $noticias);
    $this->smarty->assign("login", $login);
    $this->smarty->assign("username", $username);
    $this->smarty->assign("admin", $admin);
    $this->smarty->assign("baseDir", $this->baseDir);

    $this->smarty->display('noticias.tpl');
  }

  function cargarVistaAdmin($noticias){
    $this->smarty->assign("noticias", $noticias);
    $this->smarty->assign("baseDir", $this->baseDir);

    $this->smarty->display('edicion-noticias.tpl');
  }

  function cargarVistaEditarAdmin($noticia){
    $this->smarty->assign("noticia", $noticia);
    $this->smarty->assign("baseDir", $this->baseDir);

    $this->smarty->display('admin-edit-noticia.tpl');
  }
}
?>
