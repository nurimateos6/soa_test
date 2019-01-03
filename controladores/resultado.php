<?php
modelo::usar( 'testalumno');

class controlador_resultado extends controlador
{
  public $accion_defecto= 'admin';

  
  //Accion para ADMINISTRAR/LISTAR tests
  public function accion_admin()
  {
    //----------
    //Extraer Datos para ejecucion con la pagina que se está viendo.
    $pagina= (isset($_GET['p']) ? (int)$_GET['p'] : 0);
    if ($pagina < 1) $pagina= 1;//se empieza en la primera pagina como mucho.
    $lineas= config::get('pagina.lineas', 10);
    if ($lineas < 1) $lineas= 1;//como minimo se obtiene 1 elemento por pagina.
    //----------
    //Ejecutar accion
    $sql= testalumno::sqlListar();
    $total= basedatos::contar( $sql);
    $registros= basedatos::obtenerTodos( $sql, $pagina-1, $lineas);
    //----------
    //Dar una respuesta
    vista::generarPagina( 'admin', array( 
      'pagina'=>$pagina,
      'lineas'=>$lineas,
      'total'=>$total,
      'registros'=>$registros,
    ));
  }//accion_admin
  
  }