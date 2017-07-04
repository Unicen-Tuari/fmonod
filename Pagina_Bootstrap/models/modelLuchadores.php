<?php
class ModelLuchadores
{
  private $db;
  function __construct()
  {
    $this->db = new PDO('mysql:host=localhost;'
            .'dbname=db_contenido;charset=utf8',
            'root', '');
  }

  function GetLuchadores()
  {
    $consulta = $this->db->prepare("SELECT * FROM luchadores");
    $result = $consulta->execute();
    return $consulta->fetchAll();
  }

  function InsertarLuchador($nombre, $apellido, $edad, $categoria, $pais, $historia, $link, $torneos_ganados)
  {
    $consulta = $this->db->prepare("INSERT INTO luchadores (nombre, apellido, edad, categoria, pais, historia, link, torneos_ganados) ".
                "VALUES (?,?,?,?,?,?,?,?)");
    $result = $consulta->execute(array($nombre, $apellido, $edad, $categoria, $pais, $historia, $link, $torneos_ganados));
    //var_dump($consulta->errorInfo());
  }

  function BorrarLuchador($id_luchador)
  {
    $sentencia = $this->db->prepare("DELETE FROM luchadores WHERE id_luchador = ?");
    $sentencia->execute(array($id_luchador));
  }

  function ModificarLuchador($id_luchador,$nombre, $apellido, $edad, $categoria, $pais, $historia, $link, $torneos_ganados)
  {
    $sentencia = $this->db->prepare("UPDATE luchadores SET nombre=?,apellido=?,edad=?,categoria=?,pais=?,historia=?,link=?,torneos_ganados=?,WHERE id_luchador=?");
    $sentencia->execute(array($nombre, $apellido, $edad, $categoria, $pais, $historia, $link, $torneos_ganados,$id_luchador));
  }

  function EditarLuchador($id_luchador,$nombre, $apellido, $edad)
  {
    $sentencia = $this->db->prepare("UPDATE luchadores SET nombre=?,apellido=?,edad=? WHERE id_luchador=?");
    $sentencia->execute(array($nombre, $apellido, $edad, $id_luchador));
  }

  function GetLuchador($id_luchador)
  {
    $consulta = $this->db->prepare("SELECT * FROM luchadores WHERE id_luchador = ?");
    $result = $consulta->execute(array($id_luchador));
    return $consulta->fetch();
  }
}
?>
