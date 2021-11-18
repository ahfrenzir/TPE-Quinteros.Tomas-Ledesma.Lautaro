<?php
require_once "./Model/Usermodel.php";
require_once "./View/LoginView.php";
require_once "./Helpers/AuthHelper.php";

class LoginController
{

    private $model;
    private $view;
    private $authHelper;

    function __construct()
    {
        $this->model = new UserModel();
        $this->view = new LoginView();
        $this->authHelper= new AuthHelper();
    }

    function login()
    {
        $logged = $this->authHelper->checkLoggedIn();
        $this->view->showlogin($logged);
    }

    function register()
    {
        if (!empty($_POST['user']) && !empty($_POST['password'])) {
            $username = $this->model->getUser($_POST['user']);
            if ($_POST['user'] == $username->user) {
                $this->view->showRegister("Este usuario ya existe");
            } else {
                $user = $_POST['user'];
                $admin = 0;
                $password = password_hash($_POST['password'], PASSWORD_BCRYPT);

                $this->model->register($user, $password, $admin);
                $this->verifyLogin();
            }
        }
    }

    function verifyLogin(){
        if (!empty($_POST['user']) && !empty($_POST['password'])) {
            $userForm = $_POST['user'];
            $passwordForm = $_POST['password'];

            $user = $this->model->getUser($userForm);

            if ($user && password_verify($passwordForm, ($user->password))) {

                session_start();
                $_SESSION["user"] = $user;
                $_SESSION["admin"] = $user->admin;

                $this->view->redirectHome();
                
            } else {
                $this->view->showlogin("Acceso Denegado");
            }
        }
    }

    function showRegister()
    {
        $this->view->showRegister();
    }

    function logout()
    {
        session_start();
        session_destroy();
        $this->view->redirectHome();
    }
}
