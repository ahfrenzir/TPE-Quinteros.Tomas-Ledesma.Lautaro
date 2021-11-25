<?php

require_once 'libs/smarty-3.1.39/smarty-3.1.39/libs/Smarty.class.php';

class RollsView
{

    private $smarty;

    function __construct()
    {
        $this->smarty = new Smarty();
    }

    function renderChampionsByRoll($champions, $rolls, $logged, $admin)
    {
        $this->smarty->assign('titulo', "Lista de campeones: ");
        $this->smarty->assign('logged', $logged);
        $this->smarty->assign('admin', $admin);
        $this->smarty->assign('roll', $rolls);
        $this->smarty->assign('champions', $champions);
        $this->smarty->display('templates/championsByRoll.tpl');
    }

    function renderRolls($rolls, $logged, $admin)
    {
        $this->smarty->assign('titulo', "Lista de champions");
        $this->smarty->assign('logged', $logged);
        $this->smarty->assign('admin', $admin);
        $this->smarty->assign('rolls', $rolls);
        $this->smarty->display('templates/rollsList.tpl');
    }

    function showError($logged,$admin)
    { 
        $this->smarty->assign('admin', $admin);
        $this->smarty->assign('logged', $logged);
        $this->smarty->display('templates/error.tpl');
    }

    function redirectList()
    {
        header("Location: " . BASE_URL . "roles");
    }
}
