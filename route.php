<?php

require_once 'Controller/RollsController.php';
require_once 'Controller/ChampionsController.php';
require_once 'Controller/GeneralController.php';

define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

if(!empty($_GET['action'])){
    $action = $_GET['action'];
}else{
    $action = 'home';
}

$rollsController = new RollsController();
$championsController = new ChampionsController();
$generalController = new GeneralController();
$params = explode('/,', $action);

echo (var_dump($_GET['action']));
echo (var_dump($params[0]));
echo(var_dump($_POST));

switch($params[0]){
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
        $championsController->createChampion($params[1]); 
        break;
    case 'deleteChampion': 
        $championsController->deleteChampion($params[1]); 
        break;
    /*case 'updateChampion': 
        $championsController->updateChampion($params[1]); 
        break;*/
    case 'createRoll': 
        $rollController->createRoll(); 
        break;
    case 'deleteRoll': 
        $rollController->deleteRoll($params[1]); 
        break;
    case 'updateRoll': 
        $rollController->updateRoll($params[1]); 
        break;
    /*default:
        showError();*/
}