<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Ingresar Notas</title>
        <meta charset="utf-8">
        <meta name='viewport' content='width=device-width, user-scalable=no, initial-scale=1.0, maximun-scale=1.0,minimun-scale=1.0'>
        <link rel='stylesheet' href="CSS/bootstrap.min.css">
        <script type="text/javascript" src="js/jQuery.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/validar.js"></script>

    </head>

    <body>

        <?php
        session_start();

        function tabla($result) {
            
            /*Link  de la Pagina que procesa la notas
             * Que necesita el Profesor,Grado,Curso
             * Para ello se envie el Grado y Curso, el prof ya es una variable de Session
             */
            
            $link="notaCurso.php?curCod=";
            
            $cabecera = mysqli_fetch_assoc($result);
            while ($cabecera) {
                
                $grado = $cabecera['GradCod'];
                print "<div class='panel panel-default'>
                            
                            <div class='panel-heading'>
                                <h4 class='panel-title'><a href='#'>" . $cabecera['GradDesc'] . "</a></h4>
                            </div>
                            
                            <div class='panel-body' hidden>
                                 <div class='list-group' style='margin-bottom: 0px'>
                                      <a href='".($link.$cabecera['CurCod']."&gradCod=".$cabecera['GradCod'])."' class='list-group-item'>" . $cabecera['CurNom'] . "</a>";
                while (($lista = mysqli_fetch_assoc($result) ) && $lista['GradCod'] == $grado) {
                               print " <a href='".($link.$lista['CurCod']."&gradCod=".$cabecera['GradCod'])."' class='list-group-item'>". $lista['CurNom'] . "</a>";
                }
                print "          </div>                        
                           </div>
                </div>";
                $cabecera = $lista;
            }
        }

        ;





        if (isset($_SESSION['profId'])) {
            include 'conexion.php';
            $profCod=$_SESSION['profId'];
            $conexion = mysqli_connect($host, $user, $password, $database);
            $consulta = "SELECT * FROM `vistaprofesor` where ProfCod=$profCod order by GradCod";
            $result = mysqli_query($conexion, $consulta);
            
            /*La funcion mysqli_feth e como una lista con ventana que cada ves que es invocada cmabia de posicion
               para ello se uso la funcion mysqli_data_seek($Result,0) para no interferir en nada             */
            $profesor= mysqli_fetch_assoc($result)['ProfNom']; 
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
                            <li><a href="">Profesor:<?php print" $profesor"; ?> </a></li>
                            <li><a href="">DATO:<?php print " Datos sobre el Profesor "; ?></a></li>
                            <li><a href="salirProf.php" class="navbar-brand"><span class="label label-success">Salir</span></a></li>   
                        </ul>
                    </div>
                </nav>
            </header>
           <div class="container">               
            <div class="col-md-6">
                <ol class="breadcrumb">
                    <li><a href="index.html">Inicio</a></li>
                    <li><a href="index.html">Intranet</a></li>
                    <li class=""><strong>Profesor</strong></li>
                </ol>         
            </div>


        </div>

            <div class="container">
                <div class="panel-group col-md-6">
    <?php tabla($result); ?>

                </div>
            </div> 

                <?php } else {
                    ?>


            <!--Pequeno Menu-->
            <header>
                <nav class="navbar navbar-default " >
                    <div class="navbar-header">
                        <!-- Id navegacion  debe coincidir con el nombre id de abajo-->
                        <button class="navbar-toggle" data-toggle="collapse" data-target="#navegacion">
                            <!-- Mostrar en dispositivos de lectura que no reconocen los iconos Dispositivo de Lectura-->
                            <span class="sr-only">Mostrar Navegacion</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a href="#" class="navbar-brand">COLEGIO</a>
                    </div>
                    <div class="    collapse navbar-collapse" id="navegacion">
                        <ul class="nav navbar-nav">
                            <li><a href="consultaNota.php">Alumno</a></li>
                            <li class="active"><a href="#">Profesor</a></li>
                        </ul>
                    </div>
                </nav>
            </header>
            <!--Ubicacion dEL USUARIO de  nuestra paginA-->
            <div class="container">
                <div class="row col-md-6">
                    <ol class="breadcrumb">
                        <li><a href="index.html">Inicio</a></li>
                        <li><a href="index.html">Intranet</a></li>
                        <li class=""><strong>Profesor</strong></li>
                    </ol>           

                    <form class="form-horizontal" action="sessionProf.php" method="POST" >
                        <div class="form-group">
                            <label class="control-label col-sm-3">CodProfesor</label>
                            <div  class="col-sm-6"><input class="validar-Prof form-control" placeholder="CodigoProfesor" type="text" name="id" required  pattern="[0-9]{5}"></div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-3 ">Password</label>
                            <div class="col-sm-6"> <input class="form-control" placeholder="Password" type="password" name="password" required></div>                          
                        </div> 
                        <div class="form-group">
                            <!--Desplaza una columana offset -->
                            <div class="col-xs-offset-1">
                                <input class="btn btn-success" type="submit" value="Ingresar">
                            </div>
                        </div>

                    </form>
                </div>
            </div>
                <?php }?>
    </body>
</html>
