<?php
modelo::usar( 'pregunta');
class controlador_pregunta extends controlador
{
  public $accion_defecto= 'admin';
  
  //-------------------------------------------------------------------------
  public function accion_admin()
  {
    //----------
    //Extraer Datos para ejecucion con la pagina que se está viendo.
    $pagina= (isset($_GET['p']) ? (int)$_GET['p'] : 0);
    if ($pagina < 1) $pagina= 1;//se empieza en la primera pagina como mucho.
    $lineas= config::get('pagina.lineas', 10);
    //$lineas= 5;//Probar con menos lineas
    if ($lineas < 1) $lineas= 1;//como minimo se obtiene 1 elemento por pagina.
    //----------
    //Ejecutar accion
    $sql= pregunta::sqlListar('asignatura');

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
  
  //-------------------------------------------------------------------------
  //Accion para CREAR un pregunta
  public function accion_crear()
  {
    $bien= false;
    $error= '';
    $modelo= new pregunta;
    //----------
    $pagina= (int)(isset($_GET['p']) ? $_GET['p'] : 0);//coger la pagina para poder volver
    //----------
    //Si hay datos del formulario pregunta, se intenta crear nueva...
    if (isset($_POST['pregunta'])) {
      //Copiar los datos del formulario...
      $modelo->llenar( $_POST['pregunta']);
      //Intentar guardar validando antes el modelo...
      $bien= $modelo->guardar();
      if ($bien) $error= 'El pregunta se ha guardado correctamente.';
      else $error= 'No se ha podido guardar la pregunta nueva.';
    }//if
    //----------
    //Dar una respuesta segun el resultado del proceso.
    if ($bien) {
      //vista::redirigir( array('preguntas.editar'), array('id'=>$modelo->referencia, 'p'=>$pagina));
      vista::generarPagina( 'editar', array( 
        'modelo'=>$modelo,
        'error'=>$error,
        'pagina'=>$pagina,
        'guardado'=>true,
      ));
    } else {
      vista::generarPagina( 'crear', array( 
        'modelo'=>$modelo,
        'error'=>$error,
        'pagina'=>$pagina,        
      ));
    }//if
    //-----*/
  }//accion_crear
  
  //-------------------------------------------------------------------------
  //Accion para EDITAR un pregunta
  public function accion_editar()
  {
    $bien= false;
    $error= '';
    $modelo= null;
    //----------
    $pagina= (int)(isset($_GET['p']) ? $_GET['p'] : 0);//coger la pagina para poder volver
    //----------
    //Coger el dato clave para cargar el modelo a editar...
    $id= (isset($_GET['id']) ? $_GET['id'] : (isset($_POST['id']) ? $_POST['id'] : null));
    if ($id === null) {
      $error= 'No se ha indicado el pregunta a editar.';
    } else {
      $modelo= new pregunta;
      if (!$modelo->cargar( $id)) {
        $error= 'No se puede cargar el pregunta ('.$id.') para editar.';
        $modelo= null;
      }//if
    }//if
    //----------
    //Si hay modelo cargado, y datos del formulario, se intenta copiar/guardar.
    if (($modelo !== null) && isset($_POST['pregunta'])) {
      //Copiar los datos del formulario...
      $modelo->llenar( $_POST['pregunta']);
      //Intentar guardar validando antes el modelo...
      $bien= $modelo->guardar();
      if ($bien) $error= 'El pregunta se ha guardado correctamente.';
      else $error= 'No se ha podido guardar la pregunta ('.$id.').';
    }//if
    //----------
    //Dar una respuesta segun el resultado del proceso.
    //--if ($bien) {
    //--  vista::redirigir( array('preguntas'), array('p'=>$pagina));
    //--} else {
      vista::generarPagina( 'editar', array( 
        'modelo'=>$modelo,
        'error'=>$error,
        'pagina'=>$pagina,
      ));
    //--}//if
    //-----*/
  }//accion_editar
  
  //-------------------------------------------------------------------------
  //Accion para CONSULTAR un pregunta
  public function accion_ver()
  {
    $bien= false;
    $error= '';
    $modelo= null;
    //----------
    $pagina= (int)(isset($_GET['p']) ? $_GET['p'] : 0);//coger la pagina para poder volver
    //----------
    //Coger el dato clave para cargar el modelo a editar...
    $id= (isset($_GET['id']) ? $_GET['id'] : (isset($_POST['id']) ? $_POST['id'] : null));
    if ($id === null) {
      $error= 'No se ha indicado el pregunta a consultar.';
    } else {
      $modelo= new pregunta;
      if (!$modelo->cargar( $id)) {
        $error= 'No se puede cargar el pregunta ('.$id.') para consultar.';
        $modelo= null;
      }//if
    }//if
    //----------
    //Dar una respuesta segun el resultado del proceso.
    vista::generarPagina( 'ver', array(
      'modelo'=>$modelo,
      'error'=>$error,
      'pagina'=>$pagina,
    ));
  }//accion_ver
  
  //-------------------------------------------------------------------------
  //Accion para ELIMINAR un pregunta
  public function accion_borrar()
  {
    $bien= false;
    $error= '';
    $modelo= null;
    //----------
    $pagina= (int)(isset($_GET['p']) ? $_GET['p'] : 0);//coger la pagina para poder volver
    //----------
    //Coger el dato clave para cargar el modelo a editar...
    $id= (isset($_GET['id']) ? $_GET['id'] : (isset($_POST['id']) ? $_POST['id'] : null));
    if ($id === null) {
      $error= 'No se ha indicado el pregunta a editar.';
    } else {
      $modelo= new pregunta;
      if (!$modelo->cargar( $id)) {
        $error= 'No se puede cargar el pregunta ('.$id.') para editar.';
        $modelo= null;
      }//if
    }//if
    //----------
    $confirmado= (boolean)(isset($_GET['ok']) ? $_GET['ok'] : (isset($_POST['ok']) ? $_POST['ok'] : 0));
    //----------
    //Si hay modelo cargado, y datos del formulario, se intenta eliminar.
    if (($modelo !== null) && $confirmado) {
      //Intentar eliminar el modelo...
      $bien= $modelo->eliminar();
      if ($bien) $error= 'El pregunta se ha eliminado correctamente.';
      else $error= 'No se ha podido eliminar el pregunta ('.$id.').';
    }//if
    //----------
    //Dar una respuesta segun el resultado del proceso.
    if ($bien) {
      vista::redirigir( array('pregunta'), array('p'=>$pagina));
    } else {
      vista::generarPagina( 'borrar', array(
        'modelo'=>$modelo,
        'error'=>$error,
        'pagina'=>$pagina,
      ));
    }//if
  }//accion_borrar
  
  //-------------------------------------------------------------------------
  //Accion para CREAR modelos de pregunta de ejemplo.
  //Eliminar o comentar cuando no se use.
  /*-----*/
  public function accion_creardemo()
  {
    $modelo= new pregunta;
    //Simular la creacion de varias preguntas...

    for ($i= 1; ($i <= 100); $i++) {
      $modelo->asignatura= sprintf( 'SOA');
      $modelo->pregunta= sprintf( 'PREGUNTA%d', $i);
      $modelo->ra = sprintf('a - %d' ,$i);
      $modelo->rb = sprintf('b - %d' ,$i);
      $modelo->rc = sprintf('c - %d' ,$i);
      $modelo->rd = sprintf('d - %d' ,$i);
      $modelo->correcta = str_shuffle('abcd')[0];
      $modelo->nivel= sprintf( '%d', rand(1,4));
      $modelo->veces_bien = rand(10,20);
      $modelo->veces_mal = rand(10,20);
      $modelo->veces = rand(40,100);
      $modelo->guardar();
      //crear nueva instancia para que se inserte el siguiente.
      $modelo= new pregunta;
    }//for
    //--echo 'voy a redirigir la pagina...'; flush();//probar a generar contenido HTML antes de redirigir.
    vista::redirigir( array('pregunta','admin'));
  }//accion_creardemo

}//class controlador_preguntas
