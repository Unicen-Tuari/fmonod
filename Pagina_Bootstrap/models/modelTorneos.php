<?php
class ModelTorneos
{
  private $db;
  function __construct()
  {
    $this->db = new PDO('mysql:host=localhost;'
            .'dbname=db_contenido;charset=utf8',
            'root', '');
  }

  function GetTorneos()
  {
    $consulta = $this->db->prepare("SELECT * FROM torneos");
    $result = $consulta->execute();
    return $consulta->fetchAll();
  }

  function InsertarTorneo($nombre_torneo, $lugar, $fecha_torneo)
  {
    $consulta = $this->db->prepare("INSERT INTO torneos (nombre_torneo, lugar, fecha_torneo) ".
                "VALUES (?,?,?)");
    $result = $consulta->execute(array($nombre_torneo, $lugar, $fecha_torneo));
    //var_dump($consulta->errorInfo());
  }

  function BorrarTorneo($id_torneo)
  {
    $sentencia = $this->db->prepare("DELETE FROM torneos WHERE id_torneo = ?");
    $sentencia->execute(array($id_torneo));
  }

  function ModificarNoticia($id_torneo,$nombre_torneo, $lugar, $fecha_torneo)
  {
    $sentencia = $this->db->prepare("UPDATE torneos SET nombre_torneo=?,lugar=?,fecha_torneo=? WHERE id_torneo=?");
    $sentencia->execute(array($id_torneo,$nombre_torneo, $lugar, $fecha_torneo));
  }

  function GetTorneo($id_torneo)
  {
    $consulta = $this->db->prepare("SELECT * FROM torneos WHERE id_torneo = ?");
    $result = $consulta->execute(array($id_torneo));
    return $consulta->fetch();
  }
}
?>
