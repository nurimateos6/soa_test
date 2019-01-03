<?php
//---------------------------------------------------------------------------
//Vista de Test para los alumnos...
//---------------------------------------------------------------------------
// Datos que recibe:
//    $preguntas --> array con las preguntas del test.
//---------------------------------------------------------------------------

        // ver($preguntas);
?>
<div id="main">
<div class="inner">
<h1>Test</h1>
<form method="post" action="?a=test"> 
<?php 

  // array de indice de de las respuestas en la BDD
  $_SESSION['orden_respuestas']=array('ra','rb','rc','rd');
  // Se baraja el array para que las respuestas no repitan el orden.
  // Se guarda en sesión para utilizarlo después en la corrección
  shuffle($_SESSION['orden_respuestas']);
  $i=0;
  foreach ($preguntas as $pregunta => $p){
    $i++;
    vista::generarParcial('pregunta',array('numero'=>$i,'pregunta'=>$p)); 
  }
?>
<div class="col-12">
  <ul class="actions fit">
    <li>
      <input  type="submit" value="Enviar" class="button primary fit">
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


