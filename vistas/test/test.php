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
<h1>Test</h1>
<form method="post" action="#"> 
<?php 
          // foreach ($preguntas as $pregunta ) 
for ($i=0; $i < 20; $i++) 
  # code...

            vista::generarParcial('pregunta',array('numero'=>$i)); 
        ?>
</form>

</div>
</div>

<!-- SCRIPT PARA PODER DESMARCAR LOS BOTONES RADIO -->
<script type="text/javascript">
      $('input[type=radio]').click(function(){
    if (this.previous) {
        this.checked = false;
    }
    this.previous = this.checked;
});</script>