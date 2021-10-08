<?php

require_once './Model/RollsModel.php';
require_once './View/RollsView.php';

class RollsController{

    private $model;
    private $view;

    

    function __construct(){
        $this->model = new RollsModel();
        $this->view = new RollsView();
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
        $roll = $_POST['roll'];
        $description = $_POST['description'];
        $this->model->insertRollOnDB($roll,$description);
        $this->view->redirectList();
    }

    function deleteRoll($id){
        $this->model->deleteRollfromdb($id);
        $this->view->redirectList();
    }

    function updateRoll(){
        $id = $_POST['id_roll'];
        $name = $_POST['name'];
        $description = $_POST['description'];
        $this->model->updateRollFromDB($id, $name, $description);
        $this->view->redirectList();
    }

}