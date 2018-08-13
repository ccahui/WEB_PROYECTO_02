<?php

require 'conexion.php';
session_start();
if (isset($_POST['id']) && isset($_POST['password'])) {

    $id = addslashes($_POST['id']);
    $pas = addslashes($_POST['password']);

    $conexion = mysqli_connect($host, $user, $password, $database);
    $consulta = "SELECT * FROM CUENTA_PROF WHERE profCod=$id and ProfPas='$pas'";
    $result = mysqli_query($conexion, $consulta);
    $result= mysqli_fetch_assoc($result);
    if ($result) {
        
        $_SESSION['profId'] = $id;
        //Redirecciona a la pagina de Inicio para iniciar Session
        
        header("Location:ingresarNota.php");
    } else {
        //Redirecciona al formulario (Pagina Inicio)
        ?>
        <script>
            window.alert('NumCuenta o Contraseña Incorrecta');
           window.location.assign('ingresarNota.php');</script>     
        <?php

    }
}
?>