<?php

require_once 'libs/smarty-3.1.39/smarty-3.1.39/libs/Smarty.class.php';

class ChampionsView{

    private $smarty;

    function __construct(){
        $this->smarty= new Smarty();
    }

    function renderChampions($champions){
        $this->smarty->assign('titulo', "Lista de champions");
        $this->smarty->assign('champions', $champions);
        $this->smarty->display('templates/championsList.tpl');
    }

    function renderHome(){
        $this->smarty->display('templates/home.tpl');
    }
}