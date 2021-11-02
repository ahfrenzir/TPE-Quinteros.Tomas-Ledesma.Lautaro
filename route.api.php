<?php

require_once 'libs/Router.php';
require_once 'Controller/ApiTaskController.php';

// crea el router
$router = new Router();

// define la tabla de ruteo
$router->addRoute('champions', 'GET', 'ApiTaskController', 'obtenerchampions');
$router->addRoute('champions', 'POST', 'ApiTaskController', 'crearTarea');
$router->addRoute('champions/:ID', 'GET', 'ApiTaskController', 'obtenerTarea');
$router->addRoute('champions/:ID', 'DELETE', 'ApiTaskController', 'eliminarTarea');
$router->addRoute('champions/:ID', 'PUT', 'ApiTaskController', 'actualizarTarea');

// rutea
$router->route($_GET["resource"], $_SERVER['REQUEST_METHOD']);

