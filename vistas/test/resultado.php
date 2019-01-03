<?php
//---------------------------------------------------------------------------
// Vista de Resultados para los alumnos...
//---------------------------------------------------------------------------
// Datos que recibe:
//    $preguntas --> array con las preguntas del test con respuestas incluidas.
//---------------------------------------------------------------------------

?>
<div id="main">
<div class="inner">
<h1>Corrección</h1>
  <form method="post" action="?a=alumno.alumno"> 
<?php 
    $i=0;// Variable para mostrar el número de pregunta dentro del test
    foreach ($preguntas as $pregunta => $p){
      $i++;
      // Se muestra cada pregunta
      vista::generarParcial('pregunta_resultado',array('numero'=>$i,'pregunta'=>$p)); 
    }
?>
    <div class="col-12">
      <ul class="actions fit">
        <li>
          <input  type="submit" value="Salir" class="button primary fit">
        </li>
      </ul>
    </div>
  </form>
</div>
</div>

<!-- SCRIPT PARA PODER DESMARCAR LOS BOTONES RADIO -->
<script type="text/javascript">
  $('input[type=radio]').click(function(){
  /* Se guardan todos los radiobutton con el mismo nombre
     que el que se ha clicado*/
  var radios = document.getElementsByName(this.name);
  // Se transforma la variable anterior en un array
  var ra = Array.prototype.slice.call(radios);
  // Change the text of multiple elements with a loop

  if (this.previous) {
    // Para cada radiobutton con el mismo nombre...
    ra.forEach(function(element){
      // ... se desmarcan todos y se cambia el estado anterior a false
      element.checked = false;
      element.previous = false;
    });
  }else{
    // Para cada radiobutton con el mismo nombre...
    ra.forEach(function(element){
      // ... se desmarcan todos y se cambia el estado anterior a false
      element.checked = false;
      element.previous = false;
    });
    // Se vuelve a checar el radiobutton clicado
    this.checked = true;
  }
  // Se guarda el estado anterior
  this.previous = this.checked;
});</script>


