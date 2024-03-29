<?php

require_once 'libs/smarty-3.1.39/smarty-3.1.39/libs/Smarty.class.php';

class GeneralView
{

    private $smarty;

    function __construct()
    {
        $this->smarty = new Smarty();
    }

    function renderHome($logged)
    {
        $this->smarty->assign('logged', $logged);
        $this->smarty->display('templates/home.tpl');
    }
    function renderAdminHome(){
        $this->smarty->display('templates/Admin/adminHome.tpl');
    }

    function renderUsersList($users){
        $this->smarty->assign('users', $users);
        $this->smarty->display('templates/Admin/adminUsers.tpl');

    }

    function showError()
    {
        $this->smarty->display('templates/error.tpl');
    }

    function redirectUsers()
    {
        header("Location: " . BASE_URL . "usuarios");
    }
}
