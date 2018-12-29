<?php
//---------------------------------------------------------------------------
//Vista Principal del alumno.
//---------------------------------------------------------------------------
// Datos que recibe:
//    $alumno --> instancia de objeto alumno
//    $niveles --> array con los datos de cada nivel
//---------------------------------------------------------------------------


// ver($alumno);
// ver($niveles);
// Imágen de cada nivel
$img=array('nude','acero','verde','oro');
// NÚMERO DE PREGUNTAS POR TEST
$np=20;

?>
<div id="main">
<div class="inner">

<div class="row" >
  <div class="col-5">
    <?= '<h1 ">'.html::encode( $alumno->nombre).'</h1>' ?>
  </div>
  <div class="col-5"></div>

  <div style="margin-top: 1em;" class="col-2 right">
  <?php
    vista::generarPieza( 'boton_accion', array( 'texto'=>'Editar', 'icono'=>'editar.png',
        'activo'=>false, 'url'=>array('a'=>'alumno.editar', 'id'=>$alumno->id)));
  ?>Editar
  </div>
</div>

<div class="row" >
<?php

  foreach ($niveles as $nivel) {
    ($nivel['ntests']==0)?$nivel['ntests']=1:null;
    echo '<div " class="col-3">';
      if ($alumno->nivel==$nivel['nivel'])
        echo '<canvas style="width: 5em" id="canvas"></canvas>';
      else
        echo '<img style="width:5em; " src="images/niveles/'.$nivel['nivel'].'.png">';
      echo '<h2>Nivel '.html::encode( $nivel['nivel']).'</h2>';
    echo '</div>';
    echo '<div style="padding-bottom: 5em;" class="col-9">';
      ?>
      <div class="table wrapper">
        <table >
          <thead>
            <tr style="font-weight: bold; font-size: 1em">
              <th>Puntos</th>
              <th>Aciertos</th>
              <th>Fallos</th>
              <th>Contestadas</th>
              <th>Nº Tests</th>
            </tr>
          </thead>
          <tbody>
              <tr style="font-weight: bold; font-size: 1em">
                <td style="color:yellow"><?= $nivel['puntos'] ?></td>
                <td style="color:lightgreen"><?= round(($nivel['correctas']/($nivel['ntests']*$np))*100,1) ?> %</td>
                <td style="color:red"><?= round(($nivel['incorrectas']/($nivel['ntests']*$np))*100,1)?> %</td>
                <td ><?= round(((($nivel['correctas']+$nivel['incorrectas'])/($nivel['ntests']*$np))*100),1) ?> %</td>
                <td ><?= $nivel['ntests'] ?></td>
              </tr>
          </tbody>
        </table>
      </div>
      <?php
      vista::generarPieza( 'boton_accion', array( 'texto'=>'Hacer test de nivel '.$nivel['nivel'],
        'activo'=>true,'vacio'=>true, 'url'=>array('a'=>'test','nivel'=>$nivel['nivel'])));
    echo '</div>';
  }
?>
</div>

  <script type="text/javascript">
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
    character.src = "images/niveles/<?= $img[$alumno->nivel-1]?>.png";
    
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
</div>
</div>