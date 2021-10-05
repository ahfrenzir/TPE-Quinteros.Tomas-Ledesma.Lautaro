<?php

class ChampionsModel{

    private $db;
    function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_tpe;charset=utf8', 'root', '');
    }

    function getChampionsFromDB(){
        $sentencia = $this->db->prepare("SELECT * FROM champions");
        $sentencia->execute();
        $champions = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $champions;

    }

    function getChampionsByRoll($roll){
        $sentencia = $this->db->prepare("SELECT * FROM champions WHERE id_roll = ?");
        $sentencia->execute(array($roll));
        $champions = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $champions;
    }
    
    function insertChampionOnDB($name,$description,$history){
        $sentencia = $this->db ->prepare("INSERT INTO tareas(nombre,descripcion, history) VALUES (?, ?, ?, ?)");
        $sentencia->execute(array($name, $description, $history));

    }    

    
    function deleteChampionfromdb($id){
        $sentencia = $this->db ->prepare("DELETE FROM rolls WHERE id_rolls=?");
        $sentencia->execute(array($id));
    }
    function updateRollfromdb($id){
        $sentencia = $this->db ->prepare("UPDATE roll SET finalizada = 1 WHERE id_rolls=?");
        $sentencia->execute(array($id));
    }
        
}