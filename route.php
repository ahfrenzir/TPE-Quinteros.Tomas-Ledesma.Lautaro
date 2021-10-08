<?php

require_once 'controller/LoginController.php';
require_once 'Controller/RollsController.php';
require_once 'Controller/ChampionsController.php';
require_once 'Controller/GeneralController.php';

define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

if(!empty($_GET['action'])){
    $action = $_GET['action'];
}else{
    $action = 'home';
}

$params = explode('/', $action);
$rollsController = new RollsController();
$championsController = new ChampionsController();
$generalController = new GeneralController();
$loginController= new LoginController();

//var_dump($_GET['action']);



switch($params[0]){
    case 'login':
        $loginController->login();
        break;
    case 'verify':
        $loginController->verifyLogin();
        break;
    case 'home':
        $generalController->showHome();
        break;
    case 'campeones':
        $generalController->showChampions();
    break;
    case 'campeon':
        $championsController->showChampion($params[1]);
    break;
    case 'roles':
        $rollsController->showRolls();
    break;
    case 'showChampsByRoll':
        $generalController->showChampsByRoll($params[1]);
    break;
    case 'createChampion': 
        $championsController->createChampion(); 
        break;
    case 'deleteChampion': 
        $championsController->deleteChampion($params[1]); 
        break;
    case 'updateChampion': 
        $generalController->updateChampion($params[1]); 
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
    /*default:
        showError();*/
    }