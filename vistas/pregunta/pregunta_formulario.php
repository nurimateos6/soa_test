<?php
//---------------------------------------------------------------------------
//Vista de FICHA de cliente que va embebida dentro de las vistas de 
//CONSULTA o BORRADO.
//---------------------------------------------------------------------------
// Datos que recibe:
//    $modelo --> Instancia con un modelo "Cliente" a visualizar o "null" si
//                hubo error de carga.
//    $error  --> Mensaje de error o cadena vacia si no hubo.
//---------------------------------------------------------------------------
/*-----
depurar( array( 
  'id_controlador' => aplicacion::$id_controlador,
  'id_accion' => aplicacion::$id_accion,
  'modelo' => $modelo,
  'error' => $error,
));
//-----*/
?>
<tbody class="formulario">
<?php if ($modelo !== null) { ?>

  <!-- <tr><th>ID.</th><td>
    <input type="text" name="pregunta[id]" id="id" maxlength="10" 
           value="<?php echo html::encode( $modelo->id);?>"/>
  </td></tr> -->
  <tr><th>Asignatura</th><td>
    <input type="text" name="pregunta[asignatura]" id="asignatura" maxlength="30" 
           value="<?php echo html::encode( $modelo->asignatura);?>"/>
  </td></tr>
  <tr><th>Pregunta</th><td>
    <input type="text" name="pregunta[pregunta]" id="pregunta" maxlength="300" 
           value="<?php echo html::encode( $modelo->pregunta);?>"/>
  </td></tr>
  <tr><th>Nivel</th><td>
    <input type="text" name="pregunta[nivel]" id="nivel" maxlength="1" 
           value="<?php echo html::encode( $modelo->nivel);?>"/>
  </td></tr>
    <tr><th>Respuesta a</th><td>
    <input type="text" name="pregunta[ra]" id="respuestaa" maxlength="300" 
           value="<?php echo html::encode( $modelo->ra);?>"/>
  </td></tr>
    <tr><th>Respuesta b</th><td>
    <input type="text" name="pregunta[rb]" id="respuestab" maxlength="300" 
           value="<?php echo html::encode( $modelo->rb);?>"/>
  </td></tr>
    <tr><th>Respuesta c</th><td>
    <input type="text" name="pregunta[rc]" id="respuestac" maxlength="300" 
           value="<?php echo html::encode( $modelo->rc);?>"/>
  </td></tr>
    <tr><th>Respuesta d</th><td>
    <input type="text" name="pregunta[rd]" id="respuestad" maxlength="300" 
           value="<?php echo html::encode( $modelo->rd);?>"/>
   </td></tr>
    <tr><th>Correcta</th><td>
    <input type="text" name="pregunta[correcta]" id="respuesta_correcta" maxlength="1" 
           value="<?php echo html::encode( $modelo->correcta);?>"/>
  </td></tr>
<!--
    <tr><th>Veces mal</th><td>
    <input type="text" name="pregunta[veces_mal]" id="veces_mal" maxlength="10" 
           value="<?php echo html::encode( $modelo->veces_mal);?>"/>
  </td></tr>
    <tr><th>Veces bien</th><td>
    <input type="text" name="pregunta[veces_bien]" id="veces_bien" maxlength="10" 
           value="<?php echo html::encode( $modelo->veces_bien);?>"/>
  </td></tr>
    <tr><th>Veces</th><td>
    <input type="text" name="pregunta[veces]" id="veces" maxlength="10" 
           value="<?php echo html::encode( $modelo->veces);?>"/>
  </td></tr> -->

<?php } else { ?>
  <tr><th>Error</th><td><?php echo $error;?></td></tr>
<?php }//if ?>
</tbody>