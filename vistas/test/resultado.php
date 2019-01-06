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
<?php 
  $img=array('nude','acero','verde','oro');
  $nivel=$img[sesion::get('usuario')->nivel-1];
  if ($sube) {
    echo '<div style="display=inline-block" class="col-3">';
    echo '<canvas style="width: 5em;display=inline-block" id="canvas"></canvas>';
    echo '<h2 style="display=inline-block"> Enhorabuena has ascendido al nivel '.sesion::get('usuario')->nivel .'</h2>';
    echo '</div>';

  }

?>
  <script type="text/javascript">
   

  </script>

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
});
 var canWidth = 32;
    var canHeight = 53;
    var x = 0;
    var y = 0;

    var srcX;
    var srcY;

    var sheetWidth = 192;
    var sheetHeight = 46;

    var cols = 6;
    var rows = 1;

    var width = sheetWidth / cols;
    var height = sheetHeight / rows;

    var currentFrame = 0;

    var character = new Image();
    character.src = "images/niveles/<?= $nivel ?>.png";
    
    var canvas = document.getElementById('canvas');
    canvas.width = canWidth;
    canvas.height = canHeight;
    
    var ctx = canvas.getContext('2d');

    function updateFrame(){
      currentFrame = ++currentFrame % cols;
      srcX = currentFrame * width;
      srcY = 0;

      ctx.clearRect(x,y,width,height);
    }

    function drawImage(){
      updateFrame();
      ctx.drawImage(character,srcX,srcY,width,height,x,y,width,height);
    }

    setInterval(function(){
      drawImage();

    },110);

</script>



