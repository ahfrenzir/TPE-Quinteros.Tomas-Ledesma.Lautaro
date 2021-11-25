<?php
class CommentModel
{

    private $db;
    function __construct()
    {
        $this->db = new PDO('mysql:host=localhost;' . 'dbname=db_tpe;charset=utf8', 'root', '');
    }

    function getCommentsfromDB($id_champ)
    {
        $sentencia = $this->db->prepare("SELECT * FROM comments WHERE id_champion = ?");
        $sentencia->execute(array($id_champ));
        $comments = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $comments;
    }

    function getCommentfromDB($id_champion)
    {
        $sentencia = $this->db->prepare("SELECT * FROM comments WHERE id_comment = ?");
        $sentencia->execute(array($id_champion));
        $comments = $sentencia->fetch(PDO::FETCH_OBJ);
        return $comments;
    }

    function insertComment($body, $date, $punctuation, $id_champ)
    {
        $sentencia = $this->db->prepare("INSERT INTO comments (body,date,punctuation,id_champion) VALUES (?, ?, ?, ?)");
        $sentencia->execute(array($body, $date, $punctuation, $id_champ));
    }

    function deleteComment($id)
    {
        $sentencia = $this->db->prepare("DELETE FROM comments WHERE id_comment=?");
        $sentencia->execute(array($id));
    }
    
}
