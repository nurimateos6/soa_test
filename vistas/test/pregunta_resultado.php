<?php
//---------------------------------------------------------------------------
// Vista parcial de cada resultado para los alumnos
//---------------------------------------------------------------------------
// Datos que recibe:
//    $pregunta --> Todos los campos de la pregunta con respuesta incluida.
//---------------------------------------------------------------------------

//ver($pregunta);
?>
<div class="pregunta">
  <div>
    <div class="cabecera">
      <!-- SE MUESTRA LA CABECERA DE LA PREGUNTA 
          fondo rojo si la respuesta ha sido incorrecta
          fonfo verde si la respuesta ha sido correcta -->
      <div
      <?= ( (isset($pregunta['respuesta']) )?
              ( ($pregunta['respuesta']=='r'.$pregunta['correcta']) ?
                'style=background-color:green'
              :'style=background-color:red')
          :'style=background-color:orange') ?> 
      class="num"><?= $numero ?></div>
      <div 
      <?= ( (isset($pregunta['respuesta']) )?
              ( ($pregunta['respuesta']=='r'.$pregunta['correcta']) ?
                'style=background-color:green'
              :'style=background-color:red')
          :'style=background-color:orange') ?> 
      class="preg"><?= $pregunta['pregunta'] ?></div>
    </div>
    <div class="respuestas">
<?php

        /* Se comprueba cada posible respuesta según la respuesta dada
            verde: la respuesta correcta
            rojo: respuesta erronea
            color predeterminado: ni correcta ni incorrecta*/
        foreach ($_SESSION['orden_respuestas'] as $valor) {
          $check='';
          $estilo='';

          if (isset($pregunta['respuesta']))// Si se ha contestado..

            if($pregunta['respuesta']==$valor){// Si se ha marcado..
              // Se marca el radiobutton
              $check='checked="checked"';
              // Si es incorrecta se cambia el texto a rojo
              if($valor!='r'.$pregunta['correcta']) 
                $estilo = 'style="color:red;font-weight: bold"';
            }

          // Si la respuesta ha sido correcta se pone el texto verde
          if ($valor=='r'.$pregunta['correcta']) 
            $estilo = 'style="color:green;font-weight: bold"';

          // Se muestra la respuesta con los estilos pertinentes.
          echo '<input type="radio" id="'.$pregunta['id'].$valor.'" name="'.$pregunta['id'].'" value="'.$valor.'" '.$check.'>
                 <label '.$estilo.' for="'.$pregunta['id'].$valor.'">'.$pregunta[$valor].'</label><br>';
        }

?>
    </div>
  </div>
</div>











