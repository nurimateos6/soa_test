<?php

// ver($pregunta);

?>
<div class="pregunta">
  <div>
    <div class="cabecera">
      <!--Número de pregunta en el test y pregunta -->
      <div class="num"><?= $numero ?></div>
      <div class="preg"><?= $pregunta['pregunta'] ?></div>
    </div>

    <!-- Las 4 posibles respuestas -->
    <div class="respuestas">
        <?php
        // Se muestra cada posible respuesta.
        foreach ($_SESSION['orden_respuestas'] as $valor) {

          echo '<input type="radio" id="'.$pregunta['id'].$valor.'" name="'.$pregunta['id'].'" value="'.$valor.'">
        <label for="'.$pregunta['id'].$valor.'">'.$pregunta[$valor].'</label><br>';
        }

        ?>
    </div>
  </div>
</div>











