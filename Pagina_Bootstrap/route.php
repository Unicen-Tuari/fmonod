<?php
  require_once('controllers/controllerNoticias.php');
  require_once('controllers/controllerTorneos.php');
  require_once('controllers/controllerLuchadores.php');
  require_once('controllers/controllerConsultas.php');
  require_once('controllers/controllerUsuarios.php');
  require_once('config/config_app.php');

  function parseUrl($url){
    $arr_data = explode ("/",$url);
    $arrayReturn[ConfigApp::$RESOURCE] = $arr_data[0];
    $arrayReturn[ConfigApp::$ACTION] = isset($arr_data[1]) ? $arr_data[1] : null;;
    $arrayReturn[ConfigApp::$PARAMETERS] = isset($arr_data[2]) ? $arr_data[2] : null;
    return $arrayReturn;
  }

  $controller = new ControllerNoticias();
  $controllerTorneos = new ControllerTorneos();
  $controllerLuchadores = new ControllerLuchadores();
  $controllerConsultas = new ControllerConsultas();
  $controllerUsuarios = new ControllerUsuarios();

  $datos = parseUrl($_GET[ConfigApp::$ACTION]);

  if (!array_key_exists(ConfigApp::$ACTION,$_REQUEST)){
    $controller->ctrlVistaNoticias();
  }
  else{
    //TODO Queda mapear el ABM en una pagina de Administracion.
    switch ($datos[ConfigApp::$RESOURCE]) {
      case ConfigApp::$RESOURCE_HOME:
        $controller->ctrlVistaNoticias();
        break;

      case ConfigApp::$RESOURCE_FIGHTERS:
        $controllerLuchadores->ctrlVistaLuchadores();
        break;

      case ConfigApp::$RESOURCE_TOURNAMENTS:
        $controllerTorneos->ctrlVistaTorneos();
        break;

      case ConfigApp::$RESOURCE_QUERY:
        $controllerConsultas->ctrlVistaConsultas();
        if (isset($datos[ConfigApp::$ACTION])) {
          $controllerConsultas->InsertarConsulta();
        }
        break;

      case ConfigApp::$RESOURCE_USER:
      if (isset($datos[ConfigApp::$ACTION]) && $datos[ConfigApp::$ACTION] == ConfigApp::$ACTION_LOGIN) {
        $controllerUsuarios->GetLogin();
      }else{
        $controllerUsuarios->ctrlVistaUsuarios();
        if (isset($datos[ConfigApp::$ACTION]) && $datos[ConfigApp::$ACTION] == ConfigApp::$ACTION_REGISTER) {
          $controllerUsuarios->InsertarUsuario();
        }
      }
        break;

      default:
        $controller->ctrlVistaNoticias();
        break;
    }
  }
?>
