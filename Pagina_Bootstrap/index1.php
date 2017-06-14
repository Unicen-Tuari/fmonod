<?php
  require_once('libs/Smarty.class.php');

      $smarty = new Smarty;
      $smarty->assign("titulo", $titulo);
      $smarty->display('index.tpl');


?>
