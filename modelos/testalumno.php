<?php
class testalumno extends modeloDAO
{
  //Atributos del objeto en la base de datos
 public $idalumno;  //id del alumno
  public $id;          //id unica de la pregunta, creada autoincremental
  public $nivel;    //nivel de la pregunta
  public $puntos;          //puntos obtenidos
  public $correctas;    //respuestas correctas
  public $incorrectas; //número de preguntas incorrectas
  public $ntests; //número de test realizados
  
  
  //-------------------------------------------------------------------------
  //Atributos a iniciar por heredar de "modeloDAO".
  //-------------------------------------------------------------------------
  protected $campoClave= array( 'idalumno'=>null);
  
  //-------------------------------------------------------------------------
  //Metodos a implementar por heredar de "modelo".
  //-------------------------------------------------------------------------
  
  //-------------------------------------------------------------------------
  //Validar los datos antes de almacenarlos en la BD o cuando se quiera.
  //Debe devolver "verdadero" si se valida todo correctamente, sino "falso".
  /*-----Comentado mientras no se utilice
  public function validar()
  {
    return true;
  }//validar
  //-----*/
  
  //-------------------------------------------------------------------------
  //Metodos a implementar por heredar de "modeloDAO".
  //-------------------------------------------------------------------------
  
  //-------------------------------------------------------------------------
  //Devolver la orden SQL para buscar uno o varios registros de la tabla
  //correspondiente al modelo de datos.
  public function sqlBuscar( $filtro)
  {
    $sql= 'SELECT * FROM testalumno';
    if (!empty($filtro)) {
      $sql.= ' WHERE (';
      if (!is_array($filtro)) {
        $sql.= $filtro;
      } else {
        $condiciones= array();
        foreach( $filtro as $campo => $valor) {
          $condiciones[]= $campo.' = "'.basedatos::escapar( $valor).'"';
        }//foreach
        $sql.= '('.implode( ') AND (', $condiciones).')';
      }//if
      $sql.= ')';
    }//if
    return $sql;
  }//sqlBuscar
    public function sqlTest( $filtro )
  {
    $sql= 'SELECT * FROM testalumno';
    if (!empty($filtro)) {
      $sql.= ' WHERE (';
      if (!is_array($filtro)) {
        $sql.= $filtro;
      } else {
        $condiciones= array();
        foreach( $filtro as $campo => $valor) {
          $condiciones[]= $campo.' = "'.basedatos::escapar( $valor).'"';
        }//foreach
        $sql.= '('.implode( ') AND (', $condiciones).')';
      }//if
      $sql.= ')';
    }//if
    return $sql;
  }//sqlBuscar
  //-------------------------------------------------------------------------
  //Devolver los datos necesarios para generar una orden SQL para INSERTAR
  //o ACTUALIZAR un registro en la base de datos para este modelo.
  protected function datosSQL( $insertar)
  {
    $datos= array(
      'id'=>$this->id,
      'idalumno'=>$this->idalumno,
      'nivel' =>$this->nivel,
      'puntos'=>$this->puntos,
      'correctas'=>$this->correctas,
      'incorrectas'=>$this->incorrectas,
      'ntests'=>$this->ntests,
    );
    //Procesar los datos para dejarlos preparados para la cadena SQL.
    $valores= array();

    foreach( $datos as $campo => $valor) {
      if ($valor === null) $datos[$campo]= 'NULL';
      else $datos[$campo]= '"'.basedatos::escapar( $valor).'"';
    }//foreach
    return $datos;
  }//datosSQL
  
  //-------------------------------------------------------------------------
  //Devolver la orden SQL para insertar un registro nuevo en la tabla 
  //correspondiente al modelo de datos.
  public function sqlInsertar()
  {
    //Preparar los datos.
    $datos= $this->datosSQL( true);//Datos ya escapados para SQL.
    $campos= implode( ', ', array_keys( $datos));
    $valores= implode( ', ', array_values( $datos)); 
    //----------
    $sql= 'INSERT INTO testalumno ('.$campos.') VALUES ('.$valores.')';
    //----------
    
    return $sql;
  }//sqlInsertar
  
  //-------------------------------------------------------------------------
  //Devolver la orden SQL para actualizar un registro existente en la tabla 
  //correspondiente al modelo de datos.
  public function sqlActualizar()
  {
    //Preparar los datos.
    $datos= $this->datosSQL( true);//Datos ya escapados para SQL.
    foreach( $datos as $campo => $valor) {
      $datos[$campo]= $campo.'='.$valor;
    }//foreach
    $datos= implode( ', ', $datos);
    $condicion= $this->condicionClave();
    //----------
    $sql= 'UPDATE testalumno SET '.$datos.' WHERE '.$condicion;
    //----------
    return $sql;
  }//sqlActualizar
  
  //-------------------------------------------------------------------------
  //Devolver la orden SQL para eliminar un registro existente en la tabla 
  //correspondiente al modelo de datos.
  public function sqlEliminar()
  {
    $condicion= $this->condicionClave();
    //----------
    $sql= 'DELETE FROM testalumno WHERE '.$condicion;
    //----------
    return $sql;
  }//sqlEliminar

  //-------------------------------------------------------------------------
  //Obtener la orden SQL para listar los registros de "pregunta" de la tabla, 
  //sin imponer limitaciones al número de filas resultantes, ya que la posible
  //paginación se añade posteriormente. 
  //Esta consulta está enfocada a la busqueda de registros para la sección de 
  //administración de pregunta.
  // - $orden --> Se puede indicar el orden de los resultados tal cual se 
  // haría en la parte "ORDER BY" de la orden SQL, por defecto se ordena 
  // por "id".
  public static function sqlListar( $orden='')
  {
    if (empty($orden)) $orden= 'id ASC';
    //----------
    $sql= 'SELECT * FROM testalumno ORDER BY '.$orden;
    return $sql;
  }//sqlListar
  
}//testalumno