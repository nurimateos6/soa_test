<?php
//---------------------------------------------------------------------------
//Vista de Administracion de preguntas...
//---------------------------------------------------------------------------
// Datos que recibe:
//    $registros --> array con los registros de la tabla de preguntas.
//    $total --> número de registros totales de la tabla de preguntas.
//    $pagina --> numero de pagina que se esta obteniendo.
//    $lineas --> numero de lineas visibles por pagina.
//---------------------------------------------------------------------------

// depurar( array( 
//   'id_controlador' => aplicacion::$id_controlador,
//   'id_accion' => aplicacion::$id_accion,
//   'pagina' => $pagina,
//   'lineas' => $lineas,
//   'total' => $total,
//   'registros' => $registros,
// ));

?>
<div id="main">
<div class="inner">
<h1>Preguntas</h1>
<div class="table-wrapper">
<table>
<thead>
<tr>
  <th>ID.</th>
  <th>Asignatura</th>
  <th>Pregunta</th>
  <th>Nivel</th>
  <th>Veces mal</th>
  <th>Veces bien</th>
  <th>Veces</th>
  <th>Acciones</th>
</tr>
</thead>
<tbody>
<?php //Generar los registros obtenidos de preguntas.
$al= new pregunta;
if ($registros) 
foreach($registros as $indice => $registro) {
  $al->llenar( $registro);
  echo '<tr class="'.(($indice % 2 == 0) ? 'par' : 'impar').'">';
  echo '<td class="cen">'.html::encode( $al->id).'</td>';
  echo '<td class="cen">'.html::encode( $al->asignatura).'</td>';
  echo '<td class="cen">'.html::encode( $al->pregunta).'</td>';
  echo '<td class="cen">'.html::encode( $al->nivel).'</td>';
  echo '<td class="izq">'.html::encode( $al->veces_bien).'</td>';
  echo '<td class="izq">'.html::encode( $al->veces_mal).'</td>';
  echo '<td class="izq">'.html::encode( $al->veces).'</td>';
  echo '<td class="cen">';
  echo '<div class="acciones"><div></div>';
  //-- echo 'Ver Modificar Eliminar';
  //if (tiene_permiso( 'pregunta.ver'))
    vista::generarPieza( 'boton_accion', array( 'texto'=>'Ver', 'icono'=>'ver.png',
      'activo'=>false, 'url'=>array('a'=>'pregunta.ver', 'id'=>$al->id, 'p'=>$pagina)));
  echo '<div></div>';
  //if (tiene_permiso( 'pregunta.editar')) 
    vista::generarPieza( 'boton_accion', array( 'texto'=>'Editar', 'icono'=>'editar.png',
      'activo'=>false, 'url'=>array('a'=>'pregunta.editar', 'id'=>$al->id, 'p'=>$pagina)));
  echo '<div></div>';
  //if (tiene_permiso( 'pregunta.borrar')) 
    vista::generarPieza( 'boton_accion', array( 'texto'=>'Borrar', 'icono'=>'borrar.png',
      'activo'=>false, 'url'=>array('a'=>'pregunta.borrar', 'id'=>$al->id, 'p'=>$pagina)));
  echo '</div>';
  echo '</td>';
  echo '</tr>';
}//foreach
?>
</tbody>
<tfoot>
<tr>
  <td colspan="7">
<?php //Generar el pie de la tabla con la informacion y paginador
vista::generarPieza( 'paginador', array( 'url'=>array('a'=>'pregunta'), 'total'=>$total, 'pagina'=>$pagina, 'lineas'=>$lineas));
?>
  </td>
  <td class="cen">
<?php //Generar el boton para CREAR.
//if (tiene_permiso( 'clientes.crear')) {
  echo '<div class="acciones">';
  vista::generarPieza( 'boton_accion', array( 'texto'=>'Nuevo', 'icono'=>'crear.png',
    'activo'=>true, 'url'=>array('a'=>'pregunta.crear', 'p'=>$pagina)));
  echo '</div>';
//}//if
?>
  </td>
</tr>
</tfoot>
</table>
</div>
</div>
</div>