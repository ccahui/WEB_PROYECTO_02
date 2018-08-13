<?php

require 'conexion.php';
session_start();
if (isset($_POST['id']) && isset($_POST['password'])) {

    $id = addslashes($_POST['id']);
    $pas = addslashes($_POST['password']);
     
    $conexion = mysqli_connect($host, $user, $password, $database);
    /*La contrasena no es esclusivamente un numero*/
    $consulta = "SELECT * FROM CUENTA_ALUM WHERE alumCod=$id and alumPas='$pas'";
    $result = mysqli_query($conexion, $consulta);
    $result= mysqli_fetch_assoc($result);
    if ($result) {
        $_SESSION['alumId'] = $id;
         print $id." ".$pas;        
        header("Location:consultaNota.php");
    } else {
        //Redirecciona al formulario (Pagina Inicio)
        ?>
        <script>
            window.alert('NumCuenta o Contraseña Incorrecta');
            window.location.assign('consultaNota.php');
        </script>
        <?php

    }
}
?>