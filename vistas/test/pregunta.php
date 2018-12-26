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
<div class="table-wrapper">
  <table>
    <tr>
      <th style="width:10%" ><?= $numero+1 ?></th>
      <th style="width:90%">pregunta</th>
    </tr> 
    <tr>
      <td colspan="1"  class="cen"><input type="radio" id="id1" name="demo-priority">
      <label for="id1"></label></td>
      <td>respuesta</td>
    </tr>
    <tr>
      <td  colspan="1"  class="cen"><input type="radio" id="id2" name="demo-priority">
      <label for="id2"></label></td>
      <td>respuesta</td>
    </tr>
    <tr>
      <td colspan="1"  class="cen"><input type="radio" id="id3" name="demo-priority">
      <label for="id3"></label></td>
      <td>respuesta</td>
    </tr>
  </table>
</div>











