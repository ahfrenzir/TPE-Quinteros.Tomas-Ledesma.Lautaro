<?php

require_once 'Controller/RollsController.php';
require_once 'Controller/ChampionsController.php';

define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

if(!empty($_GET['action'])){
    $action = $_GET['action'];
}else{
    $action = 'home';
}

$params = explode('/,', $action);
$rollsController = new RollsController();
$championsController = new ChampionsController();

echo (var_dump($_GET['action']));
echo (var_dump($params));
echo(var_dump($_POST));

switch($params[0]){
    case 'home':
        $championsController->showHome();
        break;
    case 'showCampeones':
        $championsController->showChampions();
    break;
    case 'showCampeon':
        $championsController->showChampion($params[1]);
    break;
    case 'showRolls':
        $rollsController->showRolls();
    break;
    /*case 'showItemsByRoll':
        showItemsByRoll();
    break;*/
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