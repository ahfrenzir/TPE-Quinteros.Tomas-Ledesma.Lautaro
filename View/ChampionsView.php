<?php

require_once 'libs/smarty-3.1.39/smarty-3.1.39/libs/Smarty.class.php';

class ChampionsView
{

    private $smarty;

    function __construct()
    {
        $this->smarty = new Smarty();
    }

    function renderChampionList($champions, $rolls, $logged, $admin)
    {
        $this->smarty->assign('titulo', "Lista de campeones");
        $this->smarty->assign('logged', $logged);
        $this->smarty->assign('admin', $admin);
        $this->smarty->assign('champions', $champions);
        $this->smarty->assign('rolls', $rolls);
        $this->smarty->display('templates/championsList.tpl');
    }
    



    function renderChampion($champion, $logged, $admin)
    {
        $this->smarty->assign('logged', $logged);
        $this->smarty->assign('admin', $admin);
        $this->smarty->assign('champions', $champion);
        $this->smarty->display('templates/champion.tpl');
    }

    function redirectList()
    {
        header("Location: " . BASE_URL . "campeones");
    }

    function showError()
    {
        $this->smarty->display('templates/error.tpl');
    }
    function searchChampion($id_champion)
    {
        $this->smarty->assign('champion', $id_champion);
    }
}
