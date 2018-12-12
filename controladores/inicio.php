<?php
class controlador_inicio extends controlador
{

  //-------------------------------------------------------------------------
  public function accion_inicio()
  {

    if (isset($_POST['nombre'])&&isset($_POST['password'])) {
      $nombre=$_POST['nombre'];
      $pass=$_POST['password'];


      //Se limpia el texto introducido en el formulario
      $nombre = filter_var(trim($nombre),FILTER_SANITIZE_FULL_SPECIAL_CHARS);
      $pass = filter_var(trim($pass),FILTER_SANITIZE_FULL_SPECIAL_CHARS);

      // basedatos::logueo($nombre, $pass);
    }
    vista::generarPagina( 'portada', array( 'dato'=>'un dato'));
  }//accion_inicio
}//class controlador_inicio
