<?php

require_once "View/GeneralView.php";
require_once "Helpers/AuthHelper.php";


class GeneralController
{

    private $view;
    private $userModel;
    private $authHelper;

    function __construct()
    {
        $this->view = new GeneralView();
        $this->authHelper = new AuthHelper();
        $this->userModel = new UserModel();
    }

    function showHome(){
        $logged  = $this->authHelper->checkLoggedIn();
        $admin = $this->authHelper->checkRoll();
        if($admin){
            $this->view->renderAdminHome();
        }else{
            $this->view->renderHome($logged);
        }
        
        
    }

    function showUsers(){
        $this->authHelper->restrictAdmin();
        $users = $this->userModel->getUsers();
        
        $this->view->renderUsersList($users);
    }

    function changeAdmin($user){
        $this->authHelper->restrictAdmin();
        $users = $this->userModel->getUser($user);
        if($users->admin == 1){
            $permission = 0;
        }else{
            $permission = 1;
        }
        $this->userModel->changePermissions($users->user, $permission);
        $this->view->redirectUsers();
        
    }

    function deleteUser($id){
        $this->authHelper->restrictAdmin();
        $this->userModel->deleteUser($id);
        $this->view->redirectUsers();
    }
    
}
