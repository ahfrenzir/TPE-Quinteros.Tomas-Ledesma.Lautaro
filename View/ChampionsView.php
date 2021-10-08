<?php

require_once 'libs/smarty-3.1.39/smarty-3.1.39/libs/Smarty.class.php';

class ChampionsView{

    private $smarty;

    function __construct(){
        $this->smarty= new Smarty();
    }

    function renderChampion($champion){
        $this->smarty->assign('champions', $champion);
        $this->smarty->display('templates/champion.tpl');
    }

    function redirectList(){
        header("Location: ".BASE_URL."campeones");
    }
    
    function showError(){
        $this->smarty->display('templates/error.tpl');
    }
}