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

    function getChampion($id){
        $champion = $this->model->getChampion($id);
        return $champion;
     }
 

    function getChampions(){
        $champions = $this->model->getChampionsFromDB();
        return $champions;
    }

    function getChampionsByRoll($id){
        $champions = $this->model->getChampionsByRoll($id);
        return $champions;
    }


    function showChampion($id){
       $champion = $this->model->getChampion($id);
       $this->view->renderChampion($champion);
    }

    function createChampion(){
        $name = $_POST['name'];
        $description = $_POST['description'];
        $history = $_POST['history'];
        $roll = $_POST['id_roll'];
        $this->model->insertChampionOnDB($name,$description,$history,$roll);
        $this->view->redirectList();
    }

    function deleteChampion($id){
        $this->model->deleteChampionFromdb($id);
        $this->view->redirectList();
    }

    function updateChampion($name, $description, $history, $roll, $id){
        $this->model->updateChampionFromDB($name, $description, $history, $roll, $id);
        $this->view->redirectList();
    }

   
}
