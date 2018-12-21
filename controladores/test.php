<?php
class controlador_enunciado extends controlador
{
  public $accion_defecto= 'enunciado';

  //-------------------------------------------------------------------------
  public function accion_enunciado()
  {

    
    vista::generarPagina( 'enunciado', array( 'dato'=>'un dato'));
  }//accion_inicio


}//class controlador_inicio
