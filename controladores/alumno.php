<?php
modelo::usar( 'alumno');
class controlador_alumno extends controlador
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
    $sql= alumno::sqlListar();

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


  public function accion_alumno(){

    $alumno = new alumno();
                                      $n=     2     ;
    $correo='al'.$n;
    $password = 'al'.$n;
    // ver($_SESSION['usuario']->id);
    // Se realiza la búsqueda del alumno con el email y password indicados
    $sql=$alumno->sqlBuscar(array('id'=>$_SESSION['usuario']->id));
    // ver($sql);
    // Se ejecuta la búsqueda del alumno indicado
    $registro = basedatos::obtenerUno($sql);
    // Se guarda el resultado de la búsqueda en el modelo.
    $alumno->llenar($registro);


    // Se consultan todos los datos guardados sobre los niveles del alumno
    $niveles=basedatos::obtenerTodos('SELECT * FROM testalumno WHERE idalumno LIKE (SELECT id FROM alumno WHERE ( id = "'.$_SESSION['usuario']->id.'"))',-1,4);
    vista::generarPagina( 'alumno', array('alumno'=>$alumno,'niveles'=>array_reverse($niveles)));

  }
  //-------------------------------------------------------------------------
  //Accion para CREAR un alumno
  public function accion_crear()
  {
    $bien= false;
    $error= '';
    $modelo= new alumno;
    //----------
    $pagina= (int)(isset($_GET['p']) ? $_GET['p'] : 0);//coger la pagina para poder volver
    //----------
    //Si hay datos del formulario alumno, se intenta crear nuevo...
    if (isset($_POST['alumno'])) {
      //Copiar los datos del formulario...
      $modelo->llenar( $_POST['alumno']);
      //Intentar guardar validando antes el modelo...
      $bien= $modelo->guardar();
      if ($bien) $error= 'El alumno se ha guardado correctamente.';
      else $error= 'No se ha podido guardar el alumno nuevo.';
    }//if
    //----------
    //Dar una respuesta segun el resultado del proceso.
    if ($bien) {
      //vista::redirigir( array('alumnos.editar'), array('id'=>$modelo->referencia, 'p'=>$pagina));
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
  //Accion para EDITAR un alumno
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
      $error= 'No se ha indicado el alumno a editar.';
    } else {
      $modelo= new alumno;
      if (!$modelo->cargar( $id)) {
        $error= 'No se puede cargar el alumno ('.$id.') para editar.';
        $modelo= null;
      }//if
    }//if
    //----------
    //Si hay modelo cargado, y datos del formulario, se intenta copiar/guardar.
    if (($modelo !== null) && isset($_POST['alumno'])) {
      //Copiar los datos del formulario...
      $modelo->llenar( $_POST['alumno']);
      //Intentar guardar validando antes el modelo...
      $bien= $modelo->guardar();
      if ($bien) $error= 'El alumno se ha guardado correctamente.';
      else $error= 'No se ha podido guardar el alumno ('.$id.').';
    }//if
    //----------
    //Dar una respuesta segun el resultado del proceso.
    //--if ($bien) {
    //--  vista::redirigir( array('alumnos'), array('p'=>$pagina));
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
  //Accion para CONSULTAR un alumno
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
      $error= 'No se ha indicado el alumno a consultar.';
    } else {
      $modelo= new alumno;
      if (!$modelo->cargar( $id)) {
        $error= 'No se puede cargar el alumno ('.$id.') para consultar.';
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
  //Accion para ELIMINAR un alumno
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
      $error= 'No se ha indicado el alumno a editar.';
    } else {
      $modelo= new alumno;
      if (!$modelo->cargar( $id)) {
        $error= 'No se puede cargar el alumno ('.$id.') para editar.';
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
      if ($bien) $error= 'El alumno se ha eliminado correctamente.';
      else $error= 'No se ha podido eliminar el alumno ('.$id.').';
    }//if
    //----------
    //Dar una respuesta segun el resultado del proceso.
    if ($bien) {
      vista::redirigir( array('alumno'), array('p'=>$pagina));
    } else {
      vista::generarPagina( 'borrar', array(
        'modelo'=>$modelo,
        'error'=>$error,
        'pagina'=>$pagina,
      ));
    }//if
  }//accion_borrar
  
  //-------------------------------------------------------------------------
  //Accion para CREAR modelos de alumno de ejemplo.
  //Eliminar o comentar cuando no se use.
  /*-----*/
  public function accion_creardemo()
  {
    $modelo= new alumno;

    for ($i= 1; $i <= 25; $i++) {
      $modelo->nivel= sprintf( '%d', rand(1,4));
      $modelo->nombre= sprintf( 'al%d', $i);
      $modelo->apellidos= sprintf( 'apellidos alumno%d', $i);
      $modelo->email= sprintf( 'al%d', $i);
      $modelo->password= md5(sprintf( 'al%d', $i));
      $modelo->guardar(true);

      for($j=1 ; $j <= $modelo->nivel ;  $j++ ) {
      basedatos::ejecutarSQL('INSERT INTO testalumno (id, idalumno, nivel, puntos, correctas, incorrectas, ntests) VALUES (NULL, "'.$i.'","'.$j.'", "'.rand(1000,5000).'", "'.rand(50,100).'", "'.rand(20,70).'", "'.rand(10,40).'")');
      }
      //crear nueva instancia para que se inserte el siguiente.
      $modelo= new alumno;
    }
    vista::redirigir( array('alumno','admin'));
  }//accion_creardemo
  
  //-------------------------------------------------------------------------
 
  //-------------------------------------------------------------------------
  //Accion para ELIMINAR un modelo de alumno de ejemplo.
  public function accion_borrardemo()
  {

    basedatos::ejecutarSQL('DELETE FROM alumno');
    basedatos::ejecutarSQL('ALTER TABLE alumno AUTO_INCREMENT = 1');
    basedatos::ejecutarSQL('DELETE FROM testalumno');
    basedatos::ejecutarSQL('ALTER TABLE testalumno AUTO_INCREMENT = 1');
    vista::redirigir( array('alumno'));

  }
  
}//class controlador_alumnos
