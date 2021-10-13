<?php
require_once "./Controller/GeneralController.php";
require_once "./Model/Usermodel.php";
require_once "./View/LoginView.php";

class LoginController
{

    private $model;
    private $view;

    function __construct()
    {
        $this->model = new UserModel();
        $this->view = new LoginView();
    }

    function login(){
        $this->view->showlogin();
    }

    function register(){
        if (!empty($_POST['user']) && !empty($_POST['password'])) {
            $username = $this->model->getUser($_POST['user']);
            if($_POST['user'] == $username->user){
                $this->view->showRegister("Este usuario ya existe");
            }else{
                $user = $_POST['user'];
                $password = password_hash($_POST['password'], PASSWORD_BCRYPT);
    
                $this->model->register($user, $password);
                $this->view->redirectLogin();
            }
        }
    }

    function verifyLogin()
    {
        if (!empty($_POST['user']) && !empty($_POST['password'])) {
            $userForm = $_POST['user'];
            $passwordForm = $_POST['password'];

            $user = $this->model->getUser($userForm);

            if ($user && password_verify($passwordForm, ($user->password))) {

                session_start();
                $_SESSION["user"] = $user;

                $this->view->redirectHome();
            } else {
                $this->view->showlogin("Acceso Denegado");
            }
        }
    }

    function showRegister(){
        $this->view->showRegister();
    }

    function logout() {
        session_start();
        session_destroy();
        $this->view->redirectHome();
    }

}
