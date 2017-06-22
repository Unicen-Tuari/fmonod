<?php
class ModelConsultas
{
  private $db;
  function __construct()
  {
    $this->db = new PDO('mysql:host=localhost;'
            .'dbname=db_contenido;charset=utf8',
            'root', '');
  }

  function GetConsultas()
  {
    $consulta = $this->db->prepare("SELECT * FROM consultas");
    $result = $consulta->execute();
    return $consulta->fetchAll();
  }

  function InsertarConsulta($nombre_apellido, $email, $texto)
  {
    $consulta = $this->db->prepare("INSERT INTO consultas (nombre_apellido, email, texto) ".
                "VALUES (?,?,?)");
    $result = $consulta->execute(array($nombre_apellido, $email, $texto));
    //var_dump($consulta->errorInfo());
  }

  function BorrarConsulta($id_consulta)
  {
    $sentencia = $this->db->prepare("DELETE FROM consultas WHERE id_consulta = ?");
    $sentencia->execute(array($id_consulta));
  }

  function GetConsulta($id_consulta)
  {
    $consulta = $this->db->prepare("SELECT * FROM consultas WHERE id_consulta = ?");
    $result = $consulta->execute(array($id_consulta));
    return $consulta->fetch();
  }
}
?>
