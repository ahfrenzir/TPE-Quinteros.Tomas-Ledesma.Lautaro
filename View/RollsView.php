<?php

require_once 'libs/smarty-3.1.39/smarty-3.1.39/libs/Smarty.class.php';

class RollsView
{

    private $smarty;

    function __construct()
    {
        $this->smarty = new Smarty();
    }

    function renderRolls($rolls)
    {
        $this->smarty->assign('titulo', "Lista de champions");
        $this->smarty->assign('rolls', $rolls);
        $this->smarty->display('templates/rollsList.tpl');
    }

    function redirectList()
    {
        header("Location: " . BASE_URL . "roles");
    }
}
