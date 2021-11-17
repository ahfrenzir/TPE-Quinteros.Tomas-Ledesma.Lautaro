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

    function showChampions()
    {
        $logged = $this->authHelper->checkLoggedIn();
        $champions = $this->model->getChampionsFromDB();
        $rolls = $this->rollsModel->getRollsFromDB();
        $this->view->renderChampionList($champions, $rolls, $logged);
    
    }
    

    function showChampion($id)
    {
        $logged = $this->authHelper->checkLoggedIn();
        $champion = $this->model->getChampion($id);
        $this->view->renderChampion($champion, $logged);
    }

    function createChampion()
    {
        $this->restrictLogin();
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
        $this->restrictLogin();
        $this->model->deleteChampionFromdb($id);
        $this->view->redirectList();
    }

    function updateChampion()
    {
        $this->restrictLogin();
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

    function restrictLogin()
    {
        $this->authHelper->restrictLoggedIn();
    }
}
