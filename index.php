<?php
require("funciones/funciones.php");
date_default_timezone_set('Europe/Madrid');
  // Unix
setlocale(LC_TIME, 'es_ES.UTF-8');
// En windows
setlocale(LC_TIME, 'spanish');

aplicacion::ejecutar('inicio');
?>

