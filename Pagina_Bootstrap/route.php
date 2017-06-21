<?php
  require_once('controllers/controllerNoticias.php');
  require_once('controllers/controllerTorneos.php');
  require_once('controllers/controllerLuchadores.php');
  require_once('controllers/controllerConsultas.php');
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

  $datos = parseUrl($_GET[ConfigApp::$ACTION]);

  if (!array_key_exists(ConfigApp::$ACTION,$_REQUEST) || $_REQUEST[ConfigApp::$ACTION] == ConfigApp::$RESOURCE_HOME){
    $controller->ctrlVistaNoticias();
  }
  else{
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
        $accion = parseUrl($_GET[ConfigApp::$ACTION]);
        if (isset($accion[ConfigApp::$ACTION])) {
          $controllerConsultas->InsertarConsulta();
        }
        break;

      default:
        $controller->ctrlVistaNoticias();
        break;
    }
  }
  /*if($datos[ConfigApp::$RESOURCE] === ConfigApp::$RESOURCE_NEWS) {
      switch ($datos[ConfigApp::$ACTION] ) {
        case ConfigApp::$ACTION_DELETE:
          $controller->($datos[ConfigApp::$PARAMETERS]);
          break;
        case ConfigApp::$ACTION_ADD:
          $controller->();
          break;
        case ConfigApp::$ACTION_VIEW:
          $controller->($datos[ConfigApp::$PARAMETERS]);
          break;
        case ConfigApp::$ACTION_FINISHED:
          $controller->($datos[ConfigApp::$PARAMETERS]);
          break;
        default:
          echo "Error: Acción inválida";
          break;
        }*/
?>
