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
        $this->smarty->assign('titulo', "Lista de campeones");
        $this->smarty->assign('champions', $champions);
        $this->smarty->assign('rolls', $rolls);
        $this->smarty->display('templates/championsList.tpl');

    }

    function renderChampionsByRoll($champions, $rolls){
        $this->smarty->assign('titulo', "Lista de campeones: ");
        $this->smarty->assign('roll', $rolls);
        $this->smarty->assign('champions', $champions);
        $this->smarty->display('templates/championsByRoll.tpl');
    }

    function renderForm($rolls){
        $this->smarty->assign('roll', $rolls);
        $this->smarty->display('templates/championUpdateForm.tpl');
    }

}