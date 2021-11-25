<?php

require_once "./Model/CommentModel.php";
require_once "./View/ApiView.php";

class ApiController{

    private $model;
    private $view;
   

    function __construct()
    {
        $this->model = new CommentModel();
        $this->view = new ApiView();
    }

    function getComments($params = null){
        $id_champion = $params[":ID"];
        $comment = $this->model->getCommentsfromDB($id_champion);
        if($comment){
            return $this->view->response($comment, 200);}
        else{
            return $this->view->response(null, 202);
        }
    }

    function getComment($params = null){
        $id_comment = $params[":ID"];
        $comment = $this->model->getCommentfromDB($id_comment);
        if($comment){
            return $this->view->response($comment, 200);}
        else{
            return $this->view->response("No existe el comentario con id = $id_comment", 400);
        }
    }

    function deleteComment($params = null){

        $idComment = $params[":ID"];
        $comment = $this->model->getCommentfromDB($idComment);
            if($comment){
                $comment = $this->model->deleteComment($idComment);
                return $this->view->response("El comentario con el id=$idComment fue borrado", 200); 
            }else{
            $this->view->response("El comentario con el id=$idComment no existe", 404);
        }
    }
   

    function createComment($params = null){


            $body = $this->getBody();
            $comments = $body->body;
            $punctuation = $body->punctuation;
            $id_champion = $body->id_champion;
            $date = $body->date;
            
            $this->model->insertComment($comments,$date, $punctuation, $id_champion);
            $this->view->response("Comentario creado con exito", 200);
            }


    function getBody(){
        $bodyString = file_get_contents("php://input");
        return json_decode($bodyString);
    }

}