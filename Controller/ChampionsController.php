<?php

require_once "./Model/ChampionsModel.php";
require_once "./View/ChampionsView.php";

class ChampionsController{

    private $model;
    private $view;

    function __construct(){
        $this->model = new ChampionsModel();
        $this->view = new ChampionsView();
    }

    function showHome(){
        $this->view->renderHome();
    }

    function showChampions(){
        $champions = $this->model->getChampions();
        $this->view->renderChampions($champions);
    }

    function showChampion($id){

    }

    function createChampion($id){
        $name = $_POST['name'];
        $description = $_POST['description'];
        $history = $_POST['history'];
        var_dump($_POST['id_roll']); 
        $this->model->insertChampionOnDB($name,$description,$history);
    }

    function deleteChampion($id){
        $this->model->deleteChampionFromdb($id);
    }

    /*function updateChampion($id){
        $this->model->updateChampionFromDB($id);
    }*/


}