<?php
//---------------------------------------------------------------------------
// Formulario para editar un alumno.
//---------------------------------------------------------------------------
// Datos que recibe:
//    $modelo --> Instancia con un modelo "alumno".
//---------------------------------------------------------------------------

?>
<tbody class="formulario">
<?php if ($modelo !== null) { ?>

  <tr><th>ID.</th><td>
    <span> <?php echo html::encode( $modelo->id);?> </span>
  </td></tr>
  <tr><th>Nivel</th><td>
    <span> <?php echo html::encode( $modelo->nivel);?> </span>
  </td></tr>
  <tr><th>Nombre</th><td>
    <input type="text" name="alumno[nombre]" id="alumno_nombre" maxlength="30" 
           value="<?php echo html::encode( $modelo->nombre);?>"/>
  </td></tr>
  <tr><th>Apellidos</th><td>
    <input type="text" name="alumno[apellidos]" id="alumno_apellidos" maxlength="60" 
           value="<?php echo html::encode( $modelo->apellidos);?>"/>
  </td></tr>
  <tr><th>E-Mail</th><td>
    <input type="text" name="alumno[email]" id="alumno_email" maxlength="30" 
           value="<?php echo html::encode( $modelo->email);?>"/>
  </td></tr>
  <tr><th>Password</th><td>
    <input type="password" name="alumno[password]" id="alumno_password" maxlength="30" 
           value="<?php echo html::encode( $modelo->password);?>"/>
  </td></tr>
<?php } else { ?>
  <tr><th>Error</th><td><?php echo $error;?></td></tr>
<?php }//if ?>
</tbody>