<?php

class RollsModel{

    private $db;
    function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_tpe;charset=utf8', 'root', '');
    }

    function getRollsFromDB(){
        $sentencia = $this->db->prepare("SELECT * FROM rolls");
        $sentencia->execute();
        $rolls = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $rolls;
    }
    function deleteRollfromdb($id){
        $sentencia = $this->db ->prepare("DELETE FROM rolls WHERE id_rolls=?");
        $sentencia->execute(array($id));
    }
    function updateRollfromdb($id){
        $sentencia = $this->db ->prepare("UPDATE roll SET finalizada = 1 WHERE id_rolls=?");
        $sentencia->execute(array($id));
    }
        
}