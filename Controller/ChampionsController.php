<?php

require_once "./Model/ChampionsModel.php";
require_once "./View/ChampionsView.php";
require_once "./Helpers/AuthHelper.php";

class ChampionsController
{

    private $model;
    private $view;
    private $authHelper;
    private $rollsModel;

    function __construct()
    {
        $this->model = new ChampionsModel();
        $this->rollsModel = new RollsModel();
        $this->view = new ChampionsView();
        $this->authHelper = new AuthHelper();
    }

    function getChampion($id)
    {
        $champion = $this->model->getChampion($id);
        return $champion;
    }


    function showChampions()
    {
        $champions = $this->model->getChampionsFromDB();
        $rolls = $this->rollsModel->getRollsFromDB();
        $this->view->renderChampionList($champions, $rolls);
    }
    
    function showChampsByRoll($id)
    {
        $champions = $this->model->getChampionsByRoll($id);
        $roll = $this->rollsModel->getRollForChampion($id);
        $this->view->renderChampionsByRoll($champions, $roll);
    }

    function getChampionsByRoll($id)
    {
        $champions = $this->model->getChampionsByRoll($id);
        return $champions;
    }


    function showChampion($id)
    {

        $champion = $this->model->getChampion($id);
        $this->view->renderChampion($champion);
    }

    function createChampion()
    {
        $this->checkloggedIn();
        if (!empty($_POST['name']) && !empty($_POST['description']) && !empty($_POST['history'])) {
            $name = $_POST['name'];
            $description = $_POST['description'];
            $history = $_POST['history'];
            $roll = $_POST['id_roll'];
            $this->model->insertChampionOnDB($name, $description, $history, $roll);
            $this->view->redirectList();
        } else {
            $this->view->showError();
        }
    }

    function deleteChampion($id)
    {
        $this->checkloggedIn();
        $this->model->deleteChampionFromdb($id);
        $this->view->redirectList();
    }

    function updateChampion()
    {
        $this->checkLoggedIn();
        if (!empty($_POST['name']) && !empty($_POST['description']) && !empty($_POST['history'])) {
            $id = $_POST['id_pj'];
            $name = $_POST['name'];
            $description = $_POST['description'];
            $history = $_POST['history'];
            $roll = $_POST['id_roll'];
            $this->model->updateChampionFromDB($name, $description, $history, $roll, $id);
            $this->view->redirectList();
        } else {
            $this->view->showError();
        }
    }

    function checkLoggedIn()
    {
        $this->authHelper->checkLoggedIn();
    }
}
