<?php
//---------------------------------------------------------------------------
//Vista de Administracion de alumnos...
//---------------------------------------------------------------------------
// Datos que recibe:
//    $registros --> array con los registros de la tabla de alumnos.
//    $total --> número de registros totales de la tabla de alumnos.
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
<h1>Alumnos</h1>
<div class="table-wrapper">
<table>
<thead>
<tr>
  <th>ID.</th>
  <th>Nivel</th>
  <th>Nombre</th>
  <th>Apellidos</th>
  <th>Email</th>
  <th>Acciones</th>
</tr>
</thead>
<tbody>
<?php //Generar los registros obtenidos de alumnos.
$al= new alumno;
if ($registros) 
foreach($registros as $indice => $registro) {
  $al->llenar( $registro);
  echo '<tr class="'.(($indice % 2 == 0) ? 'par' : 'impar').'">';
  echo '<td class="cen">'.html::encode( $al->id).'</td>';
  echo '<td class="cen">'.html::encode( $al->nivel).'</td>';
  echo '<td class="izq">'.html::encode( $al->nombre).'</td>';
  echo '<td class="izq">'.html::encode( $al->apellidos).'</td>';
  echo '<td class="izq">'.html::encode( $al->email).'</td>';
  echo '<td class="cen">';
  echo '<div class="acciones"><div></div>';
  //-- echo 'Ver Modificar Eliminar';
  //if (tiene_permiso( 'alumno.ver'))
    vista::generarPieza( 'boton_accion', array( 'texto'=>'Ver', 'icono'=>'ver.png',
      'activo'=>false, 'url'=>array('a'=>'alumno.ver', 'id'=>$al->id, 'p'=>$pagina)));
  echo '<div></div>';
  //if (tiene_permiso( 'alumno.editar')) 
    vista::generarPieza( 'boton_accion', array( 'texto'=>'Editar', 'icono'=>'editar.png',
      'activo'=>false, 'url'=>array('a'=>'alumno.editar', 'id'=>$al->id, 'p'=>$pagina)));
  echo '<div></div>';
  //if (tiene_permiso( 'alumno.borrar')) 
    vista::generarPieza( 'boton_accion', array( 'texto'=>'Borrar', 'icono'=>'borrar.png',
      'activo'=>false, 'url'=>array('a'=>'alumno.borrar', 'id'=>$al->id, 'p'=>$pagina)));
  echo '</div>';
  echo '</td>';
  echo '</tr>';
}//foreach
?>
</tbody>
<tfoot>
<tr>
  <td colspan="5">
<?php //Generar el pie de la tabla con la informacion y paginador
vista::generarPieza( 'paginador', array( 'url'=>array('a'=>'alumno'), 'total'=>$total, 'pagina'=>$pagina, 'lineas'=>$lineas));
?>
  </td>
  <td class="cen">
<?php //Generar el boton para CREAR.
//if (tiene_permiso( 'clientes.crear')) {
  // echo '<div class="acciones">';
  // vista::generarPieza( 'boton_accion', array( 'texto'=>'Nuevo', 'icono'=>'crear.png',
  //   'activo'=>true, 'url'=>array('a'=>'alumno.crear', 'p'=>$pagina)));
  // echo '</div>';
//}//if
?>
  </td>
</tr>
</tfoot>
</table>
</div>
<?php
echo '<div style="width:2em;"></div>';
  if (false) {

    vista::generarPieza( 'boton_accion', array( 'texto'=>'Crear Demo', 'icono'=>'crear.png',
    'activo'=>true, 'url'=>array('a'=>'alumno.creardemo', 'p'=>$pagina)));
  }else if(false){
    vista::generarPieza( 'boton_accion', array( 'texto'=>'Borrar demo', 'icono'=>'crear.png',
    'activo'=>true, 'url'=>array('a'=>'alumno.borrardemo', 'p'=>$pagina)));
  }
?>
</div>
</div>