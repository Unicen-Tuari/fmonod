<?php
  require_once('libs/Smarty.class.php');


      $smarty = new Smarty;
      $this->smarty->assign("titulo", $titulo);
      $this->smarty->display('index.tpl');


?>
