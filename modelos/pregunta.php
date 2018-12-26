<?php
class pregunta extends modeloDAO
{
  //Atributos del objeto en la base de datos
  public $id;          //id unica de la pregunta, creada autoincremental
  public $asignatura;  //asignatura
  public $pregunta;    //pregunta
  public $ra;          //respuesta a
  public $rb;          //respuesta b
  public $rc;          //respuesta c
  public $rd;          //respuesta d
  public $correcta;    //respuesta correcta
  public $nivel;       //nivel
  public $veces_bien;  //Número de veces bien contestada
  public $veces_mal;   //Número de veces mal contestada
  public $veces;       //Número de veces preguntada
  
  //-------------------------------------------------------------------------
  //Atributos a iniciar por heredar de "modeloDAO".
  //-------------------------------------------------------------------------
  protected $campoClave= array( 'id'=>null);
  
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
    $sql= 'SELECT * FROM pregunta';
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
      'asignatura'=>$this->asignatura,
      'pregunta' =>$this->pregunta,
      'ra'=>$this->ra,
      'rb'=>$this->rb,
      'rc'=>$this->rc,
      'rd'=>$this->rd,
      'correcta'=>$this->correcta,
      'nivel'=>$this->nivel,
      'veces_bien'=>$this->veces_bien,
      'veces_mal'=>$this->veces_mal,
      'veces'=>$this->veces,
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
    $sql= 'INSERT INTO pregunta ('.$campos.') VALUES ('.$valores.')';
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
    $sql= 'UPDATE pregunta SET '.$datos.' WHERE '.$condicion;
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
    $sql= 'DELETE FROM pregunta WHERE '.$condicion;
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
    $sql= 'SELECT * FROM pregunta ORDER BY '.$orden;
    return $sql;
  }//sqlListar
  
}//pregunta