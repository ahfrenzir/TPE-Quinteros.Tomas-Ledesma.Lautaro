<?php


class AuthHelper{

    function __construct(){
        
    }

    function checkloggedIn(){
        session_start();
        if (!isset($_SESSION["user"])) {
            header("Location: ".BASE_URL."login");
            die();
        }
    }

}