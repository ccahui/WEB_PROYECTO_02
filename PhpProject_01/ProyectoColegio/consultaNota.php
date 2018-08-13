<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Consulta Notas</title>
        <meta charset="UTF-8">
        <meta name='viewport' content='width=device-width, user-scalable=no, initial-scale=1.0, maximun-scale=1.0,minimun-scale=1.0'>
        <link rel='stylesheet' href="CSS/bootstrap.min.css">
        <link rel='stylesheet' href="CSS/consultaNota.css">
        <script type="text/javascript" src="js/jQuery.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/validar.js"></script>

    </head>
<body>
    <?php
    //Si ya inicializo Session inicializara
    session_start();

    //Mostraremos una Tabla Con los DATOS del Alumno sus Notas
    //Incluimos el archivo conexion donde se ALMACENA los datos de LA BD
    //SURGE PROBLEAMS DE META CHARSET esto se produjo en la BD no se lamaceno con UTF-8 en la BD en cajetemiento
    function tabla($result) {
        $tabla = "";
        while ($registro = mysqli_fetch_assoc($result)) {
            $tabla = $tabla .
                    "<div class='panel panel-default'>
            <div class='panel-heading'>
                <h4 class='panel-title'><a href='#'>" . $registro["CurNom"] . "</a></h4>
            </div>
            <DIV class='panel-body' hidden>
                <div class='table-responsive'>
                    <table class='table table-hover'>
                        <tr> 
                            <Th>Criterio</Th>
                            <Th>Nota</Th>    
                        </tr>
                        <tr>
                            <td>Evaluación Continua</td>
                            <td>" . $registro['NotaFinal1'] . "</td>
                        </tr>
                        <tr>
                            <td>Tareas y Practicas</td>  
                            <td>" . $registro['NotaFinal2'] . "</td>  
                        </tr>
                        <tr>
                            <td>Examen</td>  
                            <td>" . $registro['NotaFinal3'] . "</td>  
                        </tr>                    
                        <tr>
                            <th>Nota FINAL</th>  
                            <th>15</th>   
                        </tr>
                    </table>
                </div>
            </DIV>
        </div>\n";
        }
        return $tabla;
    };
    
    if (isset($_SESSION['alumId'])) {
        include("conexion.php");
        $codigoA = $_SESSION['alumId'];

        $base = mysqli_connect($host, $user, $password, $database);
        $consulta = "SELECT * FROM vistaalumno WHERE alumCod=$codigoA";
        $result = mysqli_query($base, $consulta);
        $resul = mysqli_fetch_array($result);
        $nombre = $resul['AlumNom'];
        $grado = $resul['GradDesc'];
        /*Cada ve que usamos mysqli_fecth array es como una lista con una ventana que avanza y se puedne perder
el  primer dato ene ste caso, como un puentero que realiza primList()         */
        mysqli_data_seek($result,0);
        $tabla = tabla($result);
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
                        <li><a href="">Alumno:<?php print" $nombre"; ?> </a></li>
                        <li><a href="">Grado:<?php print " $grado"; ?></a></li>
                        <li><a href="salirAlum.php" class="navbar-brand"><span class="label label-success">Salir</span></a></li>   
                    </ul>
                </div>
            </nav>
        </header>
       <div class="container">               
            <div class="col-md-6">
                <ol class="breadcrumb">
                    <li><a href="index.html">Inicio</a></li>
                    <li><a href="index.html">Intranet</a></li>
                    <li class=""><strong>Notas</strong></li>
                </ol>         
            </div>
        </div>   

        <div class="container">
            <div class="panel-group">
                <?php
                print $tabla;
                ?>
            </div>
        </div> 
        <?php
    } else {
        ?>
        
            <!--Pequeno Menu de Navegaacion-->
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
                    <div class="collapse navbar-collapse" id="navegacion">
                        <!-- Fijar el atributo role-->
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="#">Alumno</a></li>
                            <li><a href="ingresarNota.php">Profesor</a></li>
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
                        <li class=""><strong> Consulta Notas</strong></li>
                    </ol>           
                    <!--Iniciar Session de un alumno -->
                    <form class="form-horizontal" action="sessionAlum.php" method="POST" >
                        <div class="form-group">
                            <label class="control-label col-sm-3">CodAlumno</label>
                            <div  class="col-sm-6"><input class="validar form-control" placeholder="Usuario Alumno" type="text" name="id" required  pattern="[0-9]{4}"></div>
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

        
<?php } ?>
            </body>
</html>
