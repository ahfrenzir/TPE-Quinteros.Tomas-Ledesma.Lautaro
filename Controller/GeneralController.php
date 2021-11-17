<?php

require_once "View/GeneralView.php";
require_once "Helpers/AuthHelper.php";


class GeneralController
{

    private $view;
    private $authHelper;

    function __construct()
    {
        $this->view = new GeneralView();
        $this->authHelper = new AuthHelper();
    }

    function showHome(){
        $logged  = $this->authHelper->checkLoggedIn();
        $admin = $this->authHelper->checkRoll();
        var_dump($admin);
        if($admin){
            $this->view->renderAdminHome();
        }else{
            $this->view->renderHome($logged);
        }
        
        
    }
    
}
