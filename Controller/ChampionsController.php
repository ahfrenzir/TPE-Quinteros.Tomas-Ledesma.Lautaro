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
        $admin = $this->authHelper->checkRoll();
        $logged = $this->authHelper->checkLoggedIn();
        $champions = $this->model->getChampionsFromDB();
        $rolls = $this->rollsModel->getRollsFromDB();
        $this->view->renderChampionList($champions, $rolls, $logged, $admin);
    }


    function showChampion($id)
    {
        $logged = $this->authHelper->checkLoggedIn();
        $admin = $this->authHelper->checkRoll();
        $champion = $this->model->getChampion($id);
        $this->view->renderChampion($champion, $logged, $admin);
    }

    function createChampion()
    {
        $this->restrictLogin();
        $logged = $this->authHelper->checkLoggedIn();
        $admin = $this->authHelper->checkRoll();
        if (!empty($_POST['name']) && !empty($_POST['description']) && !empty($_POST['history'])) {
            $name = $_POST['name'];
            $description = $_POST['description'];
            $history = $_POST['history'];
            $roll = $_POST['id_roll'];
            $this->model->insertChampionOnDB($name, $description, $history, $roll);
            $this->view->redirectList();
        } else {
            $this->view->showError($admin,$logged);
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
        $logged = $this->authHelper->checkLoggedIn();
        $admin = $this->authHelper->checkRoll();
        if (!empty($_POST['name']) && !empty($_POST['description']) && !empty($_POST['history'])) {
            $name = $_POST['name'];
            $description = $_POST['description'];
            $history = $_POST['history'];
            $roll = $_POST['id_roll'];
            $id = $_POST['id_pj'];
            $this->model->updateChampionFromDB($name, $description, $history, $roll, $id);
            $this->view->redirectList();
        } else {
            $this->view->showError($admin,$logged);
        }
    }

    function uploadImage($id_champion)
    {
        $this->authHelper->restrictAdmin();
        if ($_FILES['images']['type'] == "image/jpg" || $_FILES['images']['type'] == "image/jpeg" || $_FILES['images']['type'] == "image/png") {
            
            $this->model->uploadImage($id_champion, $_FILES['images']);
            $this->showChampion($id_champion);
        } else {
            $this->view->showError();
        }
    }



    function restrictLogin()
    {
        $this->authHelper->restrictLoggedIn();
    }
}
