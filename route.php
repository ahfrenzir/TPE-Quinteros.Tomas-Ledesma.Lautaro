<?php

require_once 'Controller/LoginController.php';
require_once 'Controller/RollsController.php';
require_once 'Controller/ChampionsController.php';
require_once 'Controller/GeneralController.php';

define('BASE_URL', '//' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/');

if (!empty($_GET['action'])) {
    $action = $_GET['action'];
} else {
    $action = 'home';
}

$params = explode('/', $action);
$rollsController = new RollsController();
$championsController = new ChampionsController();
$generalController = new GeneralController();
$loginController = new LoginController();


switch ($params[0]) {
    case 'login':
        $loginController->login();
        break;
    case 'logout':
        $loginController->logout();
        break;
    case 'verify':
        $loginController->verifyLogin();
        break;
    case 'registro':
        $loginController->showRegister();
        break;
    case 'registrarse':
        $loginController->register();
        break;
    case 'usuarios':
        $generalController->showUsers();
        break;
    case 'deleteUser':
        $generalController->deleteUser($params[1]);
        break;
    case 'changeAdmin':
        $generalController->changeAdmin($params[1]);
        break;
    case 'home':
        $generalController->showHome();
        break;
    case 'campeones':
        $championsController->showChampions();
        break;
    case 'updateChampion':
        $championsController->updateChampion();
        break;
    case 'campeon':
        $championsController->showChampion($params[1]);
        break;
    case 'createChampion':
        $championsController->createChampion();
        break;
    case 'deleteChampion':
        $championsController->deleteChampion($params[1]);
        break;
    case 'roles':
        $rollsController->showRolls();
        break;
    case 'showChampsByRoll':
        $rollsController->showChampsByRoll($params[1]);
        break;
    case 'createRoll':
        $rollsController->createRoll();
        break;
    case 'deleteRoll':
        $rollsController->deleteRoll($params[1]);
        break;
    case 'updateRoll':
        $rollsController->updateRoll($params[1]);
        break;
}
