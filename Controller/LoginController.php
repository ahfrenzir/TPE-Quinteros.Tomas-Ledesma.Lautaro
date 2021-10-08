<?php

require_once "./Model/Usermodel.php";
require_once "./View/LoginView.php";

class LoginController{

    private $model;
    private $view;

    function __construct(){
        $this->model= new UserModel();
        $this->view= new LoginView();
    }

    function login(){
        $this->view->showlogin();
    }

    function verifyLogin(){
        if (!empty($_POST['user']) && !empty($_POST['password'])) {
            $user = $_POST['user'];
            $password = $_POST['password'];

            $user = $this->model->getUser($user);

            if ($user && password_verify($password, $user->password)){

                session_start();
                $_SESSION["user"] = $user;

                $this->view->showhome();
            }
            else{
                $this->view->showlogin("Acceso Denegado");
            }
        }
    }

}