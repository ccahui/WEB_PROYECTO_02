<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>Ingreso de Notas Grado</title>
        <meta charset="utf-8">
        <meta name='viewport' content='width=device-width, user-scalable=no, initial-scale=1.0, maximun-scale=1.0,minimun-scale=1.0'>
        <link rel='stylesheet' href="CSS/bootstrap.min.css">
        <link rel='stylesheet' href="CSS/notaCurso.css">
        <script type="text/javascript" src="js/jQuery.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/tablaNota.js"></script>
        
    </head>
    <body>
        <?php
        session_start(); 
       
        function tabla($result){
            /*Falta crear una tabla que maneje la informacion de notas Con nombre completos dodone ubiquemos
             todos lo datos             */
            while($registro= mysqli_fetch_assoc($result)){
                print " <tr>
                           <td>".$registro['AlumCod']."</td>
                           <td>".$registro['AlumNom']."</td>
                           <td>".$registro['NotaFinal1']."</td>        
                           <td>".$registro['NotaFinal2']."</td>        
                           <td>".$registro['NotaFinal3']."</td>
                           <td class='btn-group'> 
                                    <button class='insertar btn btn-primary btn-sm' ><Strong>Insertar</strong></button>
                                    <button class='cancelar btn btn-danger btn-sm'><Strong>Cancelar</strong></button>
                           </td> 
                        </tr>
                        <tr class='rpta' hidden>
                                <td></td>
                                <td></td>
                                <td>
                                    <input class='valor' type='number'>
                                </td>
                                <td>
                                    <input class='valor' type='number'>
                                </td>
                                <td>
                                    <input class='valor' type='number'>
                                </td>
                                <td>
                                    <button class='actualizar btn btn-success btn-sm'><strong>Actualizar</strong></button>
                                </td>
                            </tr>
                       ";
            }
            
            
        }
        
       
        if (isset($_SESSION['profId']) and isset($_GET['gradCod']) and isset($_GET['curCod'])) {
            
            $profCod= $_SESSION['profId'];
            $gradCod= addslashes($_GET['gradCod']);
            $curCod= addslashes($_GET['curCod']);
            /*Al enviar String como consulta no precesa tener que colocalr con " " verificar...*/
            include 'conexion.php';
            $conexion = mysqli_connect($host, $user, $password, $database);
            $consulta = "SELECT * FROM `vistag2` where ProfCod=$profCod and GradCod=$gradCod and CurCod=$curCod";
            $result = mysqli_query($conexion, $consulta);
            
            /*La funcion mysqli_feth e como una lista con ventana que cada ves que es invocada cmabia de posicion
               para ello se uso la funcion mysqli_data_seek($Result,0) para no interferir en nada             */
            $dato= mysqli_fetch_assoc($result);
            $curso=$dato['CurNom'];
            $cursoCod=$dato['CurCod'];
            
            mysqli_data_seek($result,0);
            ?>

            <header>
                <nav class="navbar navbar-default " >
                    <div class="navbar-header">
                        <!-- Id navegacion  debe coincidir con el nombre id de abajo-->
                        <button class="navbar-toggle" data-toggle="collapse" data-target="#navegacion">
                            <!-- Mostrar en dispositivos de lectura que no reconocen los iconens-->
                            <span class="sr-only">Mostrar Navegacion</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a href="#" class="navbar-brand">COLEGIO</a>
                    </div>
                    <div class=" collapse navbar-collapse" id="navegacion">
                        <!-- Fijar el atributo role-->
                        <ul class="nav navbar-nav navbar-right">     
                            <li><a href="">Curso <span id='curCod'><?php print " $curCod"?></span><?php print" $curso "; ?> </a></li>
                            <li><a href="">Grado:<?php print " $gradCod" ; ?></a></li>
                            <li><a href="ingresarNota.php" class="navbar-brand"><span class="label label-info">Atras</span></a></li>   
                        </ul>
                    </div>
                </nav>
            </header>
           <div class="container">               
            <div class="col-md-6">
                <ol class="breadcrumb">
                    <li><a href="index.html">Inicio</a></li>
                    <li><a href="index.html">Intranet</a></li>
                    <li><a href="index.html">Profesor</a></li>
                    <li><a href="index.html">Primer Grado</a></li>
                    <li class=""><strong>Curso</strong></li>
                </ol>         
            </div>
           </div>
        <div class="container">
            
                <div class='panel panel-default'>
                    <div class='panel-heading'>
                        <h4 class='panel-title'><?php print " $curso"; ?></h4>
                    </div>
                    <DIV class='panel-body'>
                        <div class="table-responsive  ">
                            <table class="table table-hover table-condensed">
                                <tr> 
                                    <th>Codigo Alumno</th>
                                    <th>Nombre Alumno</th>
                                    <Th>Evaluacion Continua</Th>
                                    <Th>Tareas Practicas</Th>
                                    <Th>Examen</Th> 
                                    <th></th>

                                </tr>
                               <?php tabla($result); ?>
                                <?php /*FUNCION QUE SE ENCARGA DE LIBERAR DICHO ESCAPCIO DE MEMORIA QUE UTILIZA
                                   DEBIDO A QUE EL RESULTADO es una lista de almance 30 alumnos con todos lo datos */ ?>
                                <?php mysqli_free_result($result)?>
                            </table>
                        </div>
                    </DIV>
                </div>
        </div>

        <?php } else{
             header("Location:ingresarNota.php");
        }?>
    </body>
</html>
