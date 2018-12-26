<?php
//---------------------------------------------------------------------------
//Vista de CREACION de clientes...
//---------------------------------------------------------------------------
// Datos que recibe:
//    $modelo --> Instancia con un modelo "Cliente" a visualizar o "null" si
//                hubo error de carga.
//    $error  --> Mensaje de error o cadena vacia si no hubo.
//    $pagina --> numero de pagina que se esta obteniendo.
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
<div id="main">
<div class="inner">
<h1>Crear pregunta</h1>
<form action="" method="post">
<div class="hoja">
<table>
<?php //Generar el cuerpo de la tabla con el formulario de cliente.
vista::generarParcial( 'pregunta_formulario', array( 'modelo'=>$modelo, 'error'=>$error));
?>
<tfoot>
<tr>
  <td colspan="2" class="cen">
  <?php if (!empty($error)) { ?><div class="mensaje"><?php echo $error; ?></div><?php }//if ?>
  <div class="acciones">
<?php //Generar el pie de la tabla con las acciones.
//if (tiene_permiso( 'clientes.crear')) {
  
  vista::generarPieza( 'boton_accion', array( 'texto'=>'Crear Nuevo', 'icono'=>'guardar.png',
    'activo'=>true, 'url'=>array('a'=>'pregunta.crear', 'p'=>$pagina), 
    'submit'=>true, 'guardado' => true));
//}//if "permiso"
echo '<div></div>';
//Generar el boton para VOLVER.
vista::generarPieza( 'boton_accion', array( 'texto'=>'Cancelar y Volver', 'icono'=>'volver.png',
  'activo'=>true, 'url'=>array('a'=>'pregunta', 'p'=>$pagina)));
?>
  </div>
  </td>
</tr>
</tfoot>
</table>
</form>
</div>
</div>
</div>
