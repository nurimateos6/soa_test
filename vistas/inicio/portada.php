	<div id="ini">
 	<div style="display: inline-block;">
 	<?php 
 		if ($usuario == null) 
 			vista::generarPieza( 'boton_accion', array( 'texto'=>'Iniciar Sesión',
    'activo'=>true, 'url'=>array('a'=>'inicio.login'), 
    'submit'=>true));
 		

 		 
    ?>
</div>
<div style="display: inline-block; margin:10px;">
    <?php
    if ($usuario == null) 
 			vista::generarPieza( 'boton_accion', array( 'texto'=>'Registrarse',
    'activo'=>true, 'url'=>array('a'=>'inicio.registro'), 
    'submit'=>true));?>
</div><br/></div>


<div id="main">

	<div class="inner">
 
		<h1>BIENVENIDO A TU TEST</h1>

		<section>
			<h2>Tu plataforma para realizar test e impulsar tu aprendizaje</h2>
			<p>Con los mejores profesores</p>
				<?php $imagen="inicio"; echo '<img src="images/'.$imagen.'.jpg" />';?>


			<br/><br/><br/>
		</section>
	</div>
</div>

