
<?php
session_start();
if(isset($_SESSION['profId'])){
    unset($_SESSION['profId']);
    header("Location:ingresarNota.php");
}
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


?>
