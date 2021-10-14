<?php
require_once "Controller/LoginController.php";
require_once "Controller/RollsController.php";
require_once "View/GeneralView.php";
require_once "Helpers/AuthHelper.php";


class GeneralController
{

    private $view;
    private $rollsController;
    private $champController;
    private $authHelper;

    function __construct()
    {
        $this->view = new GeneralView();
        $this->rollsController = new RollsController();
        $this->champController = new ChampionsController();
        $this->authHelper = new AuthHelper();
    }

    function showHome()
    {
        $this->view->renderHome();
    }

    function showChampions()
    {
        $champions = $this->champController->getChampions();
        $rolls = $this->rollsController->getRolls();
        $this->view->renderChampionList($champions, $rolls);
    }

    function showChampsByRoll($id)
    {
        $champions = $this->champController->getChampionsByRoll($id);
        $roll = $this->rollsController->getRollForChampion($id);
        $this->view->renderChampionsByRoll($champions, $roll);
    }

    

    function checkLoggedIn()
    {
        $this->authHelper->checkLoggedIn();
    }
}
