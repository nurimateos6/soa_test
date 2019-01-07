<?php
/*
  Formulario de acceso a la aplicacion
  Variables usadas:
    - $usuario --> clase "usuario" con los posibles datos de acceso.
*/
?>

<div id="main">
	<div class="inner">

<h1>Acceso</h1>

<?php if (!empty($error)) { ?>
  <div class="mensaje"><?php echo "[ ! ERROR] ".$error; ?></div>
<?php }//if ?>



<h2>Introduzca los datos de acceso al sistema</h2><br/>



<form action="" method="post">
<fieldset>
  <label for="usr" style="display:inline-block;width:10em;">Usuario: </label>
  <input type="text" id="usuario_login" name="usuario[login]" size="10" 
      value="" autofocus />
  <br/>
  <label for="pwd" style="display:inline-block;width:10em;">Contraseña: </label>
  <input type="password" id="usuario_password" name="usuario[password]" size="10" value=""/>
  <br/>
   <?php $htmlBotonSubmit= vista::generarPieza( 'boton_accion', array(
    'texto'=>'Iniciar Sesión',
    'url'=>'index.php?a=inicio.login',
    'activo'=>true,
    'submit'=>true)
    ,true); ?>
  
  <?php echo '<div class="acciones linea">'.$htmlBotonSubmit  .'</div>';?>
  <a href="?a=inicio.registro">¿No tienes cuenta? ¡Regístrate!</a>
</fieldset>
</form>
</div>
</div>
<?php
