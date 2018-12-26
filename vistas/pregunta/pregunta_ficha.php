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
<tbody class="ficha">
<?php if ($modelo !== null) { ?>
  <tr><th>ID.</th><td><?php echo html::encode( $modelo->id);?></td></tr>
  <tr><th>Pregunta</th><td><?php echo html::encode( $modelo->pregunta);?></td></tr>
  <tr><th>Asignatura</th><td><?php echo html::encode( $modelo->asignatura);?></td></tr>
  <tr><th>Nivel</th><td><?php echo html::encode( $modelo->nivel);?></td></tr>
  <tr><th>Respuesta a</th><td><?php echo html::encode( $modelo->ra);?></td></tr>
  <tr><th>Respuesta b</th><td><?php echo html::encode( $modelo->rb);?></td></tr>
  <tr><th>Respuesta c</th><td><?php echo html::encode( $modelo->rc);?></td></tr>
  <tr><th>Respuesta d</th><td><?php echo html::encode( $modelo->rd);?></td></tr>
  <tr><th>Respuesta correcta</th><td><?php echo html::encode( $modelo->correcta);?></td></tr>
  <tr><th>Veces mal</th><td><?php echo html::encode( $modelo->veces_mal);?></td></tr>
  <tr><th>Veces bien</th><td><?php echo html::encode( $modelo->veces_bien);?></td></tr>
  <tr><th>Veces contestada</th><td><?php echo html::encode( $modelo->veces);?></td></tr>
<?php } else { ?>
  <tr><th>Error</th><td><?php echo $error;?></td></tr>
<?php }//if ?>
</tbody>


