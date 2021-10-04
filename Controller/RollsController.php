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

    function showRolls(){
        $rolls = $this->model->getRolls();
        $this->view->renderRolls($rolls);
    }
    
    function createRoll(){
      
    }

    function deleteRoll($id){
        
    }

    function updateRoll($id){
        
    }

}