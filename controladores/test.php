<?php
modelo::usar( 'alumno');
modelo::usar( 'pregunta');

class controlador_test extends controlador
{
  public $accion_defecto= 'test';

  public $preguntas = null;		//Array de objetos pregunta.
  public $alumno = null;			//Instancia del modelo alumno.
  
  //-------------------------------------------------------------------------
  public function accion_test()
  {
    // Alumno que realiza el test
    $this->alumno = new alumno();
    // Array de preguntas del test.
    $this->preguntas = array();
    $pregunta = new pregunta;
    
    // Si hay post se hace la corrección del test, de lo contrario se hace la corrección.
    if (!empty($_POST) && isset($_SESSION['respuestas'])) {
      
      foreach ($_SESSION['respuestas'] as $res => $r ) {

        if (isset($_POST[$r['id']])) {
          $respuestas=array('respuesta'=>$_POST[$r['id']] );
          // echo 'MERGEO';
          $_SESSION['respuestas'][$res]=array_merge($_SESSION['respuestas'][$res],$respuestas );
        }

      }

      // Comprueba el test, puntua las respuestas y guarda los resultados en la BDD
      $puntuar=$this->accion_puntuar($_SESSION['respuestas']);

      // Se genera la página con las preguntas del test.
      vista::generarPagina( 'resultado', array( 'puntos'=>$puntuar['pts'],'preguntas'=>$_SESSION['respuestas'],'sube'=>$puntuar['sube']));
      $_SESSION['respuestas']=NULL;
    }else{
      // Si el alumno tiene el nivel adecuado para hacer el test del nivel indicado por GET
      if (isset($_GET['nivel']) && $this->alumno->nivel=$_GET['nivel'] ) {
      
        $_SESSION['respuestas']=[];
        
        // Se escogen todas las preguntas del nivel seleccionado
        // 10 primeros resultados de preguntas que menos han salido en los tests,
        // que menos se han contestado y se han fallado más veces.
        $sql='SELECT *,(veces-veces_bien+veces_mal) AS contestada FROM pregunta WHERE ((nivel = '.$_GET['nivel'].')) ORDER BY veces ASC,contestada ASC, veces_mal DESC';

        $preguntas=basedatos::obtenerTodos( $sql,-1,10);

        // Se guardan las preguntas en una variable de sesión.
        $_SESSION['respuestas']=[];
        foreach ($preguntas as $pregunta)
        array_push($_SESSION['respuestas'], $pregunta);
        // Se genera la página con las preguntas del test.
        vista::generarPagina( 'test', array( 'preguntas'=>$_SESSION['respuestas']));
      }else{
        vista::redirigir( array('alumno','alumno'));
      }
    }
  }//accion_test


  //-------------------------------------------------------------------------

  // Corrige las respuestas y actualiza la base de datos.
  public function accion_puntuar($respuestas){
    $puntos=0; //puntos que consigue el alumno en el test
    $correctas=0;
    $incorrectas=0;

    foreach ($respuestas as $respuesta ) {
      // Si el usuario a respondido a la pregunta...
      if (isset($respuesta['respuesta'])) {
        if ($respuesta['respuesta']=='r'.$respuesta['correcta'] ){
          $puntos += 10;// se suman 10 puntos al alumno
          // Consulta para actualizar los datos de la pregunta.
          $sql_1 = 'UPDATE pregunta SET veces_bien = '.($respuesta['veces_bien']+1).', veces = '.($respuesta['veces']+1).' WHERE pregunta.id = '.($respuesta['id']).';';
          basedatos::ejecutarSQL( $sql_1 );
          $correctas++;

        }else{
          $puntos -= 5; // Se restan 5 puntos al alumno
          $sql_1 = 'UPDATE pregunta SET veces_mal = '.($respuesta['veces_mal']+1).', veces = '.($respuesta['veces']+1).' WHERE pregunta.id = '.($respuesta['id']).';';
          basedatos::ejecutarSQL( $sql_1 );
          $incorrectas++;
        }

      }else{
        $sql_1 = 'UPDATE pregunta SET veces = '.($respuesta['veces']+1).' WHERE pregunta.id = '.($respuesta['id']).';';
        basedatos::ejecutarSQL( $sql_1 );
      }
    }
    $sql_testalumno= 'SELECT * FROM testalumno WHERE idalumno = "'.$_SESSION['usuario']->id.'" AND nivel = '.$respuestas['0']['nivel'];
    $r=basedatos::ejecutarSQL(  $sql_testalumno );

    $linea_testalumno=$r->fetch_assoc();
    
    $sql_2 = 'UPDATE testalumno SET puntos = '.($linea_testalumno['puntos']+$puntos).', correctas = '.($linea_testalumno['correctas']+$correctas).', incorrectas = '.($linea_testalumno['incorrectas']+$incorrectas).', ntests = '.($linea_testalumno['ntests']+1).' WHERE id = "'.$linea_testalumno['id'].'"';

    basedatos::ejecutarSQL( $sql_2 );
    
    $sube = false;//variable que indica si el jugador sube de nivel
    //Se comprueba el nivel del alumno y del test que ha realizado para ver si sube de nivel con
    // los puntos obtenidos.
    if ( $_SESSION['usuario']->nivel != 4 &&  $_SESSION['usuario']->nivel == $respuestas['0']['nivel']) {
      if ($linea_testalumno['puntos']+$puntos >= config::get( 'pts_supera_nivel') ) {
        // Se añade la nueva linea vacía de testalumno
        $sql_3 = 'INSERT INTO testalumno (id,idalumno,nivel,puntos,correctas,incorrectas,ntests) VALUES (NULL,"'.$_SESSION['usuario']->id.'",'.($_SESSION['usuario']->nivel+1).',0,0,0,0)';
        basedatos::ejecutarSQL($sql_3);
        $sube = true;
        //Se actualiza el nivel del alumno
        $sql_3 = 'UPDATE alumno SET nivel = '.($_SESSION['usuario']->nivel+1).' WHERE id = "'.$_SESSION['usuario']->id.'"';
        $_SESSION['usuario']->nivel++;
        basedatos::ejecutarSQL($sql_3);

      }
    }
    return ['pts'=>$linea_testalumno['puntos']+$puntos,'sube'=>$sube];
  }
}