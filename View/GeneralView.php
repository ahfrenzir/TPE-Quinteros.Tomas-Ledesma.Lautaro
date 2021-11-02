<?php

require_once 'libs/smarty-3.1.39/smarty-3.1.39/libs/Smarty.class.php';

class GeneralView
{

    private $smarty;

    function __construct()
    {
        $this->smarty = new Smarty();
    }

    function renderHome()
    {
        $this->smarty->display('templates/home.tpl');
    }

    function showError()
    {
        $this->smarty->display('templates/error.tpl');
    }
}
