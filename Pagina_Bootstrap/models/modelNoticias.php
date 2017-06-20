<?php
class ModelNoticias
{
  private $db;
  function __construct()
  {
    $this->db = new PDO('mysql:host=localhost;'
            .'dbname=db_contenido;charset=utf8',
            'root', '');
  }

  function GetNoticias()
  {
    $consulta = $this->db->prepare("SELECT * FROM noticias");
    $result = $consulta->execute();
    return $consulta->fetchAll();
  }

  function InsertarNoticia($titulo, $titulo_muted, $detalle, $autor)
  {
    $consulta = $this->db->prepare("INSERT INTO noticias (titulo, titulo_muted, detalle, autor) ".
                "VALUES (?,?,?,?)");
    $result = $consulta->execute(array($titulo, $titulo_muted, $detalle, $autor));
    //var_dump($consulta->errorInfo());
  }

  function BorrarNoticia($id_noticia)
  {
    $sentencia = $this->db->prepare("DELETE FROM noticias WHERE id_noticia=?");
    $sentencia->execute(array($id_noticia));
  }

  function GetNoticia($id_noticia)
  {
    $consulta = $this->db->prepare("SELECT * FROM tarea WHERE id_noticia = ?");
    $result = $consulta->execute(array($id_noticia));
    return $consulta->fetch();
  }
}
?>
