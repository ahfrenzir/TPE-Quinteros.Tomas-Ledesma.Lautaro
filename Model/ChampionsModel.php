<?php

class ChampionsModel
{

    private $db;
    function __construct()
    {
        $this->db = new PDO('mysql:host=localhost;' . 'dbname=db_tpe;charset=utf8', 'root', '');
    }

    function getChampionsFromDB()
    {
        $sentencia = $this->db->prepare("SELECT * FROM champions");
        $sentencia->execute();
        $champions = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $champions;
    }

    function getChampion($id)
    {
        $sentencia = $this->db->prepare("SELECT * FROM champions WHERE id_pj = ?");
        $sentencia->execute(array($id));
        $champion = $sentencia->fetch(PDO::FETCH_OBJ);
        return $champion;
    }

    function getChampionsByRoll($id)
    {
        $sentencia = $this->db->prepare("SELECT * FROM champions WHERE id_roll = ?");
        $sentencia->execute(array($id));
        $champions = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $champions;
    }

    function insertChampionOnDB($name, $description, $history, $roll)
    {
        $sentencia = $this->db->prepare("INSERT INTO champions (name,description,history,id_roll) VALUES (?, ?, ?, ?)");
        $sentencia->execute(array($name, $description, $history, $roll));
    }

    function deleteChampionfromdb($id)
    {
        $sentencia = $this->db->prepare("DELETE FROM champions WHERE id_pj=?");
        $sentencia->execute(array($id));
    }


    function updateChampionFromDB($name, $description, $history, $roll, $id)
    {
        $sentencia = $this->db->prepare("UPDATE champions SET name='$name',description='$description',history='$history',id_roll='$roll' WHERE id_pj='$id'");
        $sentencia->execute();
    }

    function uploadImage($id, $image)
    {
        if ($image) {
            $pathImg = $this->moveImage($image);
            $query = $this->db->prepare("UPDATE champions SET img=? WHERE id_pj=?");
            $query->execute(array($pathImg, $id));
        }
    }

    private function moveImage($image){
        $target = "img/champs/" . uniqid() . "." . strtolower(pathinfo($image['name'], PATHINFO_EXTENSION));
        move_uploaded_file($image['tmp_name'], $target);
        return $target;
    }
    function searchChampion($name)
    {
        $sentencia = $this->db->prepare("SELECT * FROM champion WHERE name = ?");
        $sentencia->execute(array($name));
        $id_champion = $sentencia->fetch(PDO::FETCH_OBJ);
        return $id_champion;
    }
}
