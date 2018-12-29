<?php 
//Pieza de generación del "login" del usuario y algunos detalles más
$usuario= sesion::get('usuario'); 
?>
	<!-- MENÚ -->
	<nav id="menu">
		<div class="wrapper user">

			<?php

			//Mostrar una cosa u otra en función de si el usuario esta logueado o no.

			if($usuario != null){ 
				//Obtener nombre usuario

				$id= $usuario->id;
				$nombre = $usuario->nombre;
				$apellidos = $usuario->apellidos;
				$rol = $usuario->rol;
				//url avatar 

				$directorio = "./usuarios/".$id."/";

				?>

				<!-- aqui pondriamos el avatar y el nombre del usuario conectado. !-->
				<p><span><img class="user" src=" <?php echo $directorio ?>avatar.png" alt=""></span>Hola, <?php echo $nombre." ".$apellidos; ?>. [<?php echo $rol; ?>]</p>


			<?php }else{ 

				?>

				<p><span><img class="user" src="images/default.jpg" alt=""></span>Hola, Invitado.</p>


			<?php } ?>

			
			
			
		</div>
		
		
		<h2>Menu</h2>
		<ul>

			<?php if($usuario==null){
				//Si el usuario no está conectado, mostramos los botones de login y registro
				echo '<li><a href="?a=inicio.login">Conectar</a></li>';
				echo '<li><a href="?a=inicio.registro">Registro de nuevo alumno</a></li>';

			}else{
				//Si el usuario esta conectado, mostramos un boton para cerrar la sesión.
				echo '<li><a href="?a=inicio.logout">Cerrar Sesión</a></li>';
			}?>

			<li><a href="?a=inicio">Home</a></li>
			<li><a href="?a=enunciado">Enunciado</a></li>
			<li><a href="?a=alumno">Alumnos admin</a></li>
			<li><a href="?a=alumno.alumno">Alumno</a></li>
			<li><a href="?a=pregunta">Preguntas</a></li>
			<li><a href="?a=test">Test</a></li>
			<li><a href="?a=elementos">Elementos web</a></li>
		</ul>
	</nav>