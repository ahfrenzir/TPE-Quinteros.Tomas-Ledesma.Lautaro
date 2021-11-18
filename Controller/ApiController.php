<?php

require_once "./Model/ChampionsModel.php";
require_once "./View/ApiView.php";
require_once "./Helpers/AuthHelper.php";

class ApiController{

    private $model;
    private $view;
    private $authHelper;
    private $rollsModel;

    function __construct()
    {
        $this->model = new ChampionsModel();
        $this->rollsModel = new RollsModel();
        $this->view = new ApiView();
        $this->authHelper = new AuthHelper();
    }

    function getComments(){
        $comentarios = $this->model->getCommentsFromDB();
        return $this->view->response($comentarios, 200);
    }
    function getComment($params = null){
        $idComment = $params[":ID"];
        $comment = $this->model->getcomment($idComment);
        if($comment){
        return $this->view->response($comment, 200);}
        else{
            return $this->view->response("El comentario con el id=$idComment no existe", 404);
        }
    }
    function deleteComment($params = null){
        $idComment = $params[":ID"];
        $comment = $this->model->getcomment($idComment);
        if($comment){
        $comment = $this->model->DeleteComment($idComment);
        return $this->view->response("El comentario con el id=$idComment fue borrado", 200);
        }
        else{
            $this->view->response("El comentario con el id=$idComment no existe", 404);
        }
    }
    function createComment($params = null){
        $body = $this->getBody();
        $this->model->insertComment($body->comentario, $body->fecha, $body->usuario, $body->valoracion, $body->id_campeon);
        $this->view->response("El comentario se inserto con exito", 200);
    }
    private function getBody(){
        $bodyString = file_get_contents("php://input");
        return json_decode($bodyString);
    }
}
