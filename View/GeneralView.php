<?php

require_once 'libs/smarty-3.1.39/smarty-3.1.39/libs/Smarty.class.php';

class GeneralView{

    private $smarty;

    function __construct(){
        $this->smarty= new Smarty();
    }

    function renderHome(){
        $this->smarty->display('templates/home.tpl');
    }

    function renderChampionList($champions, $rolls){
        $this->smarty->assign('titulo', "Lista de champions");
        $this->smarty->assign('champions', $champions);
        $this->smarty->assign('rolls', $rolls);
        $this->smarty->display('templates/championsList.tpl');
    }

    function renderChampionsByRoll($champions, $roll){
        $this->smarty->assign('titulo', "Lista de champions " . $roll->roll);
        $this->smarty->assign('champions', $champions);
        $this->smarty->assign('rolls', $roll);
        $this->smarty->display('templates/championsByRoll.tpl');
    }

}