<?php

require_once './Model/RollsModel.php';
require_once './View/RollsView.php';
require_once "./Helpers/AuthHelper.php";

class RollsController{

    private $model;
    private $view;
    private $authHelper;

    function __construct(){
        $this->model = new RollsModel();
        $this->view = new RollsView();
        $this->loginController = new LoginController();
        $this->authHelper = new AuthHelper();
    }
    
    function getRolls(){
        $rolls = $this->model->getRollsFromDB();
        return $rolls;
    }

    function getRollForChampion($id){
        $champions = $this->model->getRollForChampion($id);
        return $champions;
    }

    function showRolls(){
        $rolls = $this->model->getRollsFromDB();
        $this->view->renderRolls($rolls);
    }
    
    function createRoll(){
        $this->checkLoggedIn();
        $roll = $_POST['roll'];
        $description = $_POST['description'];
        $this->model->insertRollOnDB($roll,$description);
        $this->view->redirectList();
    }

    function deleteRoll($id){
        $this->checkLoggedIn();
        $this->model->deleteRollfromdb($id);
        $this->view->redirectList();
    }

    function updateRoll(){
        $this->checkLoggedIn();
        $id = $_POST['id_roll'];
        $name = $_POST['name'];
        $description = $_POST['description'];
        $this->model->updateRollFromDB($id, $name, $description);
        $this->view->redirectList();
    }

    function checkLoggedIn(){
        $this->authHelper->checkLoggedIn();
    }
}