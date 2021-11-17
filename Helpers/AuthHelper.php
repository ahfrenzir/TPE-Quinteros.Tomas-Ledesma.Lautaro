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

    function checkRoll()
    {
        if(isset($_SESSION)){
            if (($_SESSION["admin"]) != 1) {
                return false;
            } else {
                return true;
            }

        }
    }
    
    function checkLoggedIn()
    {
        
        session_start();
        if (!isset($_SESSION["user"])) {
            return false;
        } else {
            return true;
        }
    }
}
