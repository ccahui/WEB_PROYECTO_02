<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/*Se modifica la tabla NOTA que necesita codigo Alumno, Codigo Curso, Codigo Profesor
Codigo de Profesor esta el variable Session['profId']
 * Para enviar datos a la BD distintos a numero se colocara '$variable' para que reconozca la bd que
 * se trata de algo distinto de un numero
 *  */

session_start();
if(isset($_SESSION['profId'])){
include('conexion.php');
$alumCod= addslashes($_GET['alumCod']);
$curCod= addslashes($_GET['cursoCod']);
$profCod=$_SESSION['profId'];
$notaF1=$_GET['nota01'];
$notaF2=$_GET['nota02'];
$notaF3=$_GET['nota03'];
/*Se puede mejorar enviando un array con el name notas y simplemente lo recorrecomos en for*/
if($notaF1=="")
    $notaF1=null;
if($notaF2=="")
    $notaF2=null;
if($notaF3=="")
    $notaF3=null;

$base= mysqli_connect($host, $user, $password, $database);
$sql = "UPDATE nota SET NotaFinal1 =?,NotaFinal2=?,NotaFinal3=?  WHERE AlumCod = $alumCod AND CurCod = $curCod and ProfCod=$profCod";
// Preparación de la consulta

$resultado = mysqli_prepare($base, $sql);
// Enlace de argumentos.

$ok = mysqli_stmt_bind_param($resultado,"iii",$notaF1,$notaF2,$notaF3);

//Mientras no ejecute la consulta,
//puede inicializar las variables
// Ejecución de la consulta.

$ok = mysqli_stmt_execute($resultado);

if($ok){
    print "ok";
}
else {
    print "No se completo la modificacion en BD";
}






}