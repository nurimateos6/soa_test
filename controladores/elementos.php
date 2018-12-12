<?php
class controlador_elementos extends controlador
{
  public $accion_defecto= 'elementos';

  //-------------------------------------------------------------------------
  public function accion_elementos()
  {

    
    vista::generarPagina( 'elementos', array( 'dato'=>'un dato'));
  }//accion_inicio


}//class controlador_inicio
