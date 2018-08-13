Proyecto Web I: COLEGIO SIMPLE

- Desarrollado en PHP y MySQL
- Utilizando XAMP para armar tu servidor Local
- Sistema Banca Simple
	-Alumno son registrados en la BD, utilizando la inteface que nos ofrece XAMP para usar MySql 
	-Cuenta_Alumno son registrados en la BD, utilizando la inteface que nos ofrece XAMP para usar MySql 
	-Profesor son registrados en la BD, utilizando la inteface que nos ofrece XAMP para usar MySql 
	-Cuenta_Profesor son registrados en la BD, utilizando la inteface que nos ofrece XAMP para usar MySq
	-Alumno o Profesor Inicia Session con su Codigo y un password (Ejemplo: Alumno [codigo:1002 password:1234] Profesor [Codigo:12345 password:1234])
	-Alumno consulta sus notas de los cursos que se matriculo 
	-Profesor ve los cursos que dicta, el profesor ve los alumnos que estan matriculados en cada uno de los cursos, el profesor puede
	modificar las notas de esos alumnos (FALTA VALIDAR LA NOTA, la nota solo debe ser entre 0-20)
	-Alumno o Profesor Cierra Session

	-Para que funcione es necesario IMPORTAR la BD de la carpeta.( la BD se llama Colegio)

	- Si configuraste el XAMP de otra manera  o cambiaste el NOMBRE DE LA BD tendras que modificar en todos los conexion.php de la  Aplicacion  
que realizen consultas a la BD
          
	 <?php
		$host="127.0.0.1";
		$user="root";
		$password="";
		$database="colegio";
	?>

-BD COLEGIO

	CURSO
	-Codigo(K)
	-Nombre del Curso
	
	GRADO (Grados que hay en el Colegio, 1-6(Primaria)  o 1-5(Secundaria))
	-Codigo(K)
	-Descripcion

	ALUMNO
	-Codigo(K)
	-Grado en el que esta el alumno(FK)
	-Nombre 
	-Direccion
	
	PROFESOR
	-Codigo(K)
	-Nombre
	-Direccion
	-Telefono

	ALUMNO_CUENTA
	-Codigo(K) (FK de Codigo Alumno)
	-Password	

	PROFESOR_CUENTA
	-Codigo(K) (FK de Codigo Profesor)
	-Password	
	
	NOTA
	-Codigo Alumno(K)(FK)
	-Codigo Curso (k)(FK)
	-Codigo Profesor (FK)
	-Nota1
	-Nota2
	-Nota3

-Se creo algunas Vista para Juntar los datos de las distintas tablas y trabajar sobre estas vistaas algunas consultas a la BD que realiza la aplicacion