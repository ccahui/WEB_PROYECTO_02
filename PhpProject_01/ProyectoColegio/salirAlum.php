<?php
session_start();
if(isset($_SESSION['alumId'])){
    unset($_SESSION['alumId']);
    header("Location:consultaNota.php");
}
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


?>

