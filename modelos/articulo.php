<?php
class articulo extends modeloDAO
{
  //Atributos del objeto en la base de datos
  public $referencia; //Referencia unica del articulo, creada por el usuario a su conveniencia
  public $texto;      //Texto descriptivo del articulo  
  public $precio;     //Precio del articulo con 2 decimales
  public $iva;        //Tipo de IVA del articulo en porcentaje
  public $notas;      //Notas internas para el Articulo
  
  //-------------------------------------------------------------------------
  //Atributos a iniciar por heredar de "modeloDAO".
  //-------------------------------------------------------------------------
  protected $campoClave= array( 'referencia'=>null);
  //--protected $campoAutonumerico= null;//
  
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
    $sql= 'SELECT * FROM articulos';
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
      'referencia'=>$this->referencia,
      'texto'=>$this->texto,
      'precio'=>str_replace( ',', '.', $this->precio),//asegurar numero en "ingles"
      'iva'=>str_replace( ',', '.', $this->iva),//asegurar numero en "ingles"
      'notas'=>$this->notas,
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
    $sql= 'INSERT INTO articulos ('.$campos.') VALUES ('.$valores.')';
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
    $sql= 'UPDATE articulos SET '.$datos.' WHERE '.$condicion;
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
    $sql= 'DELETE FROM articulos WHERE '.$condicion;
    //----------
    return $sql;
  }//sqlEliminar

  //-------------------------------------------------------------------------
  //Obtener la orden SQL para listar los registros de "articulos" de la tabla, 
  //sin imponer limitaciones al número de filas resultantes, ya que la posible
  //paginación se añade posteriormente. 
  //Esta consulta está enfocada a la busqueda de registros para la sección de 
  //administración de articulos.
  // - $orden --> Se puede indicar el orden de los resultados tal cual se 
  // haría en la parte "ORDER BY" de la orden SQL, por defecto se ordena 
  // por "referencia".
  public static function sqlListar( $orden='')
  {
    if (empty($orden)) $orden= 'referencia ASC';
    //----------
    $sql= 'SELECT * FROM articulos ORDER BY '.$orden;
    return $sql;
  }//sqlListar
  
}//articulo