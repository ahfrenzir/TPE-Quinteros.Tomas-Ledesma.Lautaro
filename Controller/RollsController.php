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

    function getRollName($id){
        $roll = $this->model->getRollName($id);
        return $roll;
    }

    function showRolls(){
        $rolls = $this->model->getRollsFromDB();
        $this->view->renderRolls($rolls);
    }
    
    function createRoll(){
      
    }

    function deleteRoll($id){
        
    }

    function updateRoll($id){
        
    }

}