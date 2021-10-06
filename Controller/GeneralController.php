<?php
require_once "Controller/ChampionsController.php";
require_once "Controller/RollsController.php";
require_once "View/GeneralView.php";

class GeneralController{

    private $view;
    private $rollsController;
    private $champController;

    function __construct(){
        $this->view = new GeneralView();
        $this->rollsController = new RollsController();
        $this->champController = new ChampionsController();
    }

    function showHome(){
        $this->view->renderHome();
    }

    function showChampions(){
        $champions = $this->champController->getChampions();
        $rolls = $this->rollsController-> getRolls();
        $this->view->renderChampionList($champions, $rolls);
    }

    function showChampsByRoll($id){
        $champions = $this->champController->getChampionByRoll($id);
        $roll = $this->rollsController-> getRollName($id);
        $this->view->renderChampionsByRoll($champions, $roll);

    }


    //$rolls = $this->rollsController-> getRolls();
    //$champs = $this->champController-> getChampions();
}