<?php

require_once './Model/RollsModel.php';
require_once './View/RollsView.php';
require_once "./Helpers/AuthHelper.php";

class RollsController
{

    private $model;
    private $view;
    private $authHelper;

    function __construct()
    {
        $this->model = new RollsModel();
        $this->view = new RollsView();
        $this->championsModel = new ChampionsModel();
        $this->authHelper = new AuthHelper();
    }

    function showRolls()
    {
        $admin = $this->authHelper->checkRoll();
        $logged = $this->authHelper->checkLoggedIn();
        $rolls = $this->model->getRollsFromDB();
        $this->view->renderRolls($rolls, $logged, $admin);
    }

    function showChampsByRoll($id)
    {
        $admin = $this->authHelper->checkRoll();
        $logged = $this->authHelper->checkLoggedIn();
        $champions = $this->championsModel->getChampionsByRoll($id);
        $roll = $this->model->getRollForChampion($id);
        $this->view->renderChampionsByRoll($champions, $roll, $logged, $admin);
    }

    function createRoll()
    {
        $this->restrictLogin();
        $roll = $_POST['roll'];
        $description = $_POST['description'];
        $this->model->insertRollOnDB($roll, $description);
        $this->view->redirectList();
    }

    function deleteRoll($id)
    {
        $this->restrictLogin();
        $this->model->deleteRollfromdb($id);
        $this->view->redirectList();
    }

    function updateRoll()
    {
        $this->restrictLogin();
        $id = $_POST['id_roll'];
        $name = $_POST['name'];
        $description = $_POST['description'];
        $this->model->updateRollFromDB($id, $name, $description);
        $this->view->redirectList();
    }

    function restrictLogin()
    {
        $this->authHelper->restrictLoggedIn();
    }
}
