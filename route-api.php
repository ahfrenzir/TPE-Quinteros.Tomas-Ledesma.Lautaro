<?php

require_once 'libs/Router.php';
require_once 'Controller/ApiController.php';

// crea el router
$router = new Router();

// define la tabla de ruteo
$router->addRoute('comments/:ID', 'GET', 'ApiController', 'getComments');
$router->addRoute('comment/:ID', 'GET', 'ApiController', 'getComment');
$router->addRoute('comment', 'POST', 'ApiController', 'createComment');
$router->addRoute('comment/:ID', 'DELETE', 'ApiController', 'deleteComment');
$router->addRoute('comment/:ID', 'PUT', 'ApiController', 'updateComment');

// rutea
$router->route($_GET["resource"], $_SERVER['REQUEST_METHOD']);

