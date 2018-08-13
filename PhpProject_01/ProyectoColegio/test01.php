<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
include 'conexion.php';

  
    $conexion = mysqli_connect($host, $user, $password, $database);
    $consulta = "SELECT * FROM `vistaprofesor` where ProfCod = 12345 order by GradCod";
    $result = mysqli_query($conexion, $consulta);
  
  $cabecera= mysqli_fetch_assoc($result);
    while($cabecera){
        print"Grado".$cabecera['GradCod']."<br>";
        $grado=$cabecera['GradCod'];
        print "Grado".$cabecera['CurNom']."<br>";
        while(($lista= mysqli_fetch_assoc($result) )&& $lista['GradCod']==$grado){
            print "Grado:".$lista['CurNom']."<br>";
       }
     print"<br>";       
       $cabecera=$lista;
    }
     
      ?>