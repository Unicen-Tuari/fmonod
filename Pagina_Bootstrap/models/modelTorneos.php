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

  function BorrarTorneo($id_torneos)
  {
    $sentencia = $this->db->prepare("DELETE FROM torneos WHERE id_torneos = ?");
    $sentencia->execute(array($id_torneos));
  }

  function GetTorneo($id_torneos)
  {
    $consulta = $this->db->prepare("SELECT * FROM torneos WHERE id_torneos = ?");
    $result = $consulta->execute(array($id_torneos));
    return $consulta->fetch();
  }
}
?>
