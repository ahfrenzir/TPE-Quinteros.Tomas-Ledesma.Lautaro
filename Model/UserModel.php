<?php

class UserModel
{

    private $db;
    function __construct()
    {
        $this->db = new PDO('mysql:host=localhost;' . 'dbname=db_tpe;charset=utf8', 'root', '');
    }

    function getUsers()
    {
        $query = $this->db->prepare('SELECT * FROM users');
        $query->execute();
        return $query->fetchAll(PDO::FETCH_OBJ);
    }

    function getUser($user)
    {
        $query = $this->db->prepare('SELECT * FROM users WHERE user = ?');
        $query->execute([$user]);
        return $query->fetch(PDO::FETCH_OBJ);
    }

    function deleteUser($id){
        $sentencia = $this->db->prepare("DELETE FROM users WHERE id=?");
        $sentencia->execute(array($id));
    }

    function changePermissions($id, $permission){
        $sentencia = $this->db->prepare("UPDATE users SET admin='$permission' WHERE id_roll='$id'");
        $sentencia->execute();
    }

    function register($user, $password, $admin)
    {
        $sentencia = $this->db->prepare('INSERT INTO users (user, password, admin) VALUES (?, ?, ?)');
        $sentencia->execute([$user, $password, $admin]);
    }
}
