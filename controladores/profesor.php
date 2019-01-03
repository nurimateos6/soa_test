<?php
class controlador_profesor extends controlador
{
  public $accion_defecto= 'profesor';

  //-------------------------------------------------------------------------
  public function accion_profesor()
  {

    
    vista::generarPagina( 'profesor', array( 'dato'=>'un dato'));
  }//accion_inicio


}//class controlador_inicio
