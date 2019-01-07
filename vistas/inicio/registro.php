
<div id="main">
	<div class="inner">

<tbody class="formulario">
  <h1>Registro</h1>
  <br/>
<?php if ($modelo !== null) { ?>

<?php if (!empty($error)) { ?>
  <div class="mensaje"><?php echo "[ ! ERROR] ".$error; ?></div>
<?php }//if ?>


  <form action="" method="post">

  		<h2>Introduce tus datos personales</h2>
      <fieldset>
              

       <input type="text" name="alumno[nombre]" id="alumno_nombre" maxlength="250" 
           value="<?php echo html::encode( $modelo->nombre);?>" placeholder="Nombre" autofocus/>
      <br/>

       
      <input type="text" name="alumno[apellidos]" id="alumno_apellidos" maxlength="250" 
           value="<?php echo html::encode( $modelo->apellidos);?>" placeholder="Apellidos"/>
      <br/>

      	<h2>Introduce tus datos de acceso</h2>
        <fieldset>
          
       <input type="email" name="alumno[email]" id="alumno_email" maxlength="100" 
           value="<?php echo html::encode( $modelo->email);?>"  placeholder="Email"/>
      <br/>

      <input type="email" name="alumno[email1]" id="alumno_email1" maxlength="100" 
           value=""  placeholder="Repite Email"/>
      <br/>
      <br/>

   
       <input type="password" name="alumno[password]" id="alumno_password" maxlength="32" 
           value="<?php echo html::encode( $modelo->password);?>"  placeholder="Password"/>
      <br/>

      <input type="password" name="alumno[password1]" id="alumno_password1" maxlength="32" 
           value=""  placeholder="Repite Password"/>
      <br/> 
    </fieldset>
  <br/>

  <?php $htmlBotonSubmit= vista::generarPieza( 'boton_accion', array(
    'texto'=>'Registrarse',
    'url'=>'index.php?a=inicio.registro',
    'activo'=>true,
    'submit'=>true)
    ,true); ?>
  
  <?php echo '<div class="acciones linea">'.$htmlBotonSubmit  .'</div>';?>


</fieldset>
</form>
 
<?php } else { ?>

  <tr><th>Error</th><td><?php echo $error;?></td></tr>

<?php }//if ?>
</tbody>

</div>
</div>