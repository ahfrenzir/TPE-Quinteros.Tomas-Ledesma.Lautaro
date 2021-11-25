<?php

class RollsModel
{

    private $db;
    function __construct()
    {
        $this->db = new PDO('mysql:host=localhost;' . 'dbname=db_tpe;charset=utf8', 'root', '');
    }

    function getRollsFromDB()
    {
        $sentencia = $this->db->prepare("SELECT * FROM rolls");
        $sentencia->execute();
        $rolls = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $rolls;
    }

    function getRollForChampion($id)
    {
        $sentencia = $this->db->prepare("SELECT * FROM rolls WHERE id_roll = ?");
        $sentencia->execute(array($id));
        $roll = $sentencia->fetch(PDO::FETCH_OBJ);
        return $roll;
    }

    function insertRollOnDB($roll, $description)
    {
        $sentencia = $this->db->prepare("INSERT INTO rolls (roll,description) VALUES (?, ?)");
        $sentencia->execute(array($roll, $description));
    }

    function deleteRollfromdb($id)
    {
        $sentencia = $this->db->prepare("DELETE FROM rolls WHERE id_roll=?");
        $sentencia->execute(array($id));
    }

    function updateRollfromdb($id, $name, $description)
    {
        $sentencia = $this->db->prepare("UPDATE rolls SET roll=?, description=? WHERE id_roll=?");
        $sentencia->execute(array($name, $description, $id));
    }
}
