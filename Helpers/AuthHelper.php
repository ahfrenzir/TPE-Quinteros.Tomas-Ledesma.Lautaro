<?php


class AuthHelper
{

    function __construct()
    {
    }

    function restrictLoggedIn()
    {
        session_start();
        if (!isset($_SESSION["user"])) {
            header("Location: " . BASE_URL . "login");
            die();
        }
    }

    function restrictAdmin(){
        session_start();
        if(($_SESSION['admin']) != 1){
            header("Location: " . BASE_URL . "login");
            die();
        }
    }

    function checkRoll()
    {
        if(isset($_SESSION)){
            if (($_SESSION["admin"]) != 1) {
                return false;
                die();
            } else {
                return true;
                die();
            }

        }
    }
    
    function checkLoggedIn()
    {
        
        session_start();
        if (!isset($_SESSION["user"])) {
            return false;
            die();
        } else {
            return true;
            die();
        }
    }
}
