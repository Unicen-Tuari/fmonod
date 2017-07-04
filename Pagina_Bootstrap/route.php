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
    $arrayReturn[ConfigApp::$ACTION] = isset($arr_data[1]) ? $arr_data[1] : null;
    $arrayReturn[ConfigApp::$PARAMETERS] = isset($arr_data[2]) ? $arr_data[2] : null;
    $arrayReturn[ConfigApp::$ID] = isset($arr_data[3]) ? $arr_data[3] : null;
    return $arrayReturn;
  }

  $controller = new ControllerNoticias();
  $controllerTorneos = new ControllerTorneos();
  $controllerLuchadores = new ControllerLuchadores();
  $controllerConsultas = new ControllerConsultas();
  $controllerUsuarios = new ControllerUsuarios();

  $datos = parseUrl($_GET[ConfigApp::$ACTION]);
  //print_r($datos);
  if (!array_key_exists(ConfigApp::$ACTION,$_REQUEST)){
    $controller->ctrlVistaNoticias();
  }
  else{
    switch ($datos[ConfigApp::$RESOURCE]) {
      case ConfigApp::$RESOURCE_HOME:
        if ($datos[ConfigApp::$ACTION] == ConfigApp::$ACTION_REGISTERED) {
          $controller->ctrlVistaNoticias();
          $controllerUsuarios->registerTrue();
        }else {
          $controller->ctrlVistaNoticias();
        }
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
      if ($datos[ConfigApp::$ACTION] == ConfigApp::$ACTION_LOGIN) {
        $controllerUsuarios->GetLogin();
        header('Location: ../../inicio');
      }
      if ($datos[ConfigApp::$ACTION] == ConfigApp::$ACTION_LOGOUT) {
        $controllerUsuarios->LogOut();
      }
      if ($datos[ConfigApp::$ACTION] == ConfigApp::$ACTION_REGISTER) {
        $controllerUsuarios->ctrlVistaUsuarios();
        if ($datos[ConfigApp::$PARAMETERS] == ConfigApp::$PARAMETER_TRUE) {
        $controllerUsuarios->InsertarUsuario();
        }
      }
        break;

      case ConfigApp::$RESOURCE_ADMIN:
      session_start();
      if (isset($_SESSION["loggedin"]) && isset($_SESSION["admin"]) && ($_SESSION["loggedin"] == true)) {
        $controllerUsuarios->consolaAdmin();
        switch ($datos[ConfigApp::$ACTION]) {

          case ConfigApp::$ACTION_ADD:
            switch ($datos[ConfigApp::$PARAMETERS]) {

              case ConfigApp::$RESOURCE_USER:
                if ($datos[ConfigApp::$ID] == ConfigApp::$PARAMETER_TRUE) {
                  $controllerUsuarios->agregarUsuario();
                }
                break;

              case ConfigApp::$RESOURCE_FIGHTERS:
                if ($datos[ConfigApp::$ID] == ConfigApp::$PARAMETER_TRUE) {
                  $controllerLuchadores->agregarLuchador();
                }
                break;

              case ConfigApp::$RESOURCE_TOURNAMENTS:
                if ($datos[ConfigApp::$ID] == ConfigApp::$PARAMETER_TRUE) {
                  $controllerTorneos->agregarTorneo();
                }
                break;

              case ConfigApp::$RESOURCE_NEWS:
              if ($datos[ConfigApp::$ID] == ConfigApp::$PARAMETER_TRUE) {
                $controller->agregarNoticia();
              }
                break;

              default:
                break;
            }
            break;

          case ConfigApp::$ACTION_MODIFY:
            switch ($datos[ConfigApp::$PARAMETERS]) {
              case ConfigApp::$RESOURCE_USER:
                $controllerUsuarios->cargarUsuariosVista();
                break;

              case ConfigApp::$RESOURCE_FIGHTERS:
                  if(isset($_POST['nombre']))
                    $controllerLuchadores->modificarLuchador($datos[ConfigApp::$ID]);
                  else
                    $controllerLuchadores->cargarEditarLuchador($datos[ConfigApp::$ID]);
                break;

              case ConfigApp::$RESOURCE_TOURNAMENTS:
                $controllerTorneos->cargarTorneosVista();
                break;

              case ConfigApp::$RESOURCE_NEWS:
                $controller->cargarNoticiasVista();
                break;

              default:
                break;
            }
            break;

          case ConfigApp::$ACTION_DELETE:
            switch ($datos[ConfigApp::$PARAMETERS]) {
              case ConfigApp::$RESOURCE_USER:
                $controllerUsuarios->cargarUsuariosVista();
                break;

              case ConfigApp::$RESOURCE_FIGHTERS:
                $controllerLuchadores->eliminarLuchador($datos[ConfigApp::$ID]);
                break;

              case ConfigApp::$RESOURCE_TOURNAMENTS:
                $controllerTorneos->cargarTorneosVista();
                break;

              case ConfigApp::$RESOURCE_NEWS:
                $controller->cargarNoticiasVista();
                break;

              default:
                break;
            }
            break;

            case ConfigApp::$ACTION_GET:
              switch ($datos[ConfigApp::$PARAMETERS]) {
                case ConfigApp::$RESOURCE_FIGHTERS:
                  $controllerLuchadores->cargarLuchadoresVista();
                  break;
              }
            break;

          default:
            break;
        }
      }
      else{
        $controller->ctrlVistaNoticias();
        $controllerUsuarios->adminError();
      }
        break;

      default:
        $controller->ctrlVistaNoticias();
        break;
    }
  }
?>
