<?php
?>

<div id="main">
<div class="inner">
<h1>Resultados de los alumnos en los tests</h1>

<div class="table-wrapper">
  <table>
<thead>
<tr>

    <th>ID del alumno</th>
    <th>ID de la pregunta</th>
    <th>Nivel</th>
    <th>Puntos</th>
    <th>Respuestas correctas</th>
    <th>Respuestas incorrectas</th>
    <th>Número de tests</th>
</tr>
</thead>
<tbody>
<?php 
//Generar los registros obtenidos de tests.
$modelo= new testalumno; //Creo una instancia del controlador
//Recorre el array...
if ($registros) 
foreach($registros as $indice => $registro) {
  $modelo->llenar( $registro); //Se llama a la acción
  echo '<tr class="'.(($indice % 2 == 0) ? 'par' : 'impar').'">';
  echo '<td class="cen">'.html::encode( $modelo->idalumno).'</td>';
  echo '<td class="cen">'.html::encode( $modelo->id).'</td>';
  echo '<td class="izq">'.html::encode( $modelo->nivel).'</td>';
  echo '<td class="cen">'.html::encode( $modelo->puntos).'</td>';
  echo '<td class="cen">'.html::encode( $modelo->correctas).'</td>';
  echo '<td class="cen">'.html::encode( $modelo->incorrectas).'</td>';
  echo '<td class="cen">'.sprintf( '%0.0f', $modelo->ntests).'</td>';

}//foreach
?>
</tbody>


<tfoot>
<tr>
  <td colspan="5">
<?php //Generar el pie de la tabla con la informacion y paginador
vista::generarPieza( 'paginador', array( 'url'=>array('a'=>'resultado'), 'total'=>$total, 'pagina'=>$pagina, 'lineas'=>$lineas));
?>
  </td>
  <td class="cen">

  </td>
</tr>
</tfoot>
</table>
</div></div></div>


