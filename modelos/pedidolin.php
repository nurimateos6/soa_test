<?php
//modelo::usar('pedido');
modelo::usar('articulo');
class pedidolin extends modeloDAO
{
  //Atributos del objeto en la base de datos
  public $idLinea;  //Identificador de la linea del pedido para facilitar los accesos
  public $serie;  //Serie del pedido al que pertenece la linea
  public $numero; //Numero del pedido al que pertenece la linea
  public $orden; //Orden de la linea dentro del pedido, se deberia poder cambiar una linea de posicion en el orden
  public $refArt; //Articulo asociado a la linea o "NULO" si es linea de texto libre
  public $texto; //Texto copiado del articulo o el texto libre que se haya introducido
  public $cantidad= 0; //Cantidad de unidades, puede ser negativo para devoluciones
  public $precio= 0.0; //Precio del articulo con 2 decimales, copiado inicialmente del articulo pero modificable, no deberia ser negativo
  public $iva= 0.0; //Tipo de IVA del articulo en porcentaje, copiado inicialmente del articulo
  public $importeBase= 0.0; //Importe precalculado de la Cantidad * Precio, para facilitar su tratamiento
  public $cuotaIva=0.0; //Importe precalculado del importeBase * iva / 100, para facilitar su tratamiento
  
  //-------------------------------------------------------------------------
  //Atributos adicionales para facilitar la gestión del pedido.
  //-------------------------------------------------------------------------
  public $pedido=null; //Referencia al modelo pedido al que pertene. 
  //Si es "null" su pedido no esta asociado en memoria, aunque exista en la BD.
  public $articulo= null; //Instancia del modelo articulo relacionado con la linea de pedido.
  
  //-------------------------------------------------------------------------
  //Atributos a iniciar por heredar de "modeloDAO".
  //-------------------------------------------------------------------------
  protected $campoClave= array( 'idLinea'=>null);
  protected $campoAutonumerico= 'idLinea';//Campo AUTO_INCREMENT
  
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
    $sql= 'SELECT * FROM pedidoslin';
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
    $cantidad= (int)$this->cantidad;
    $precio= (float)str_replace( ',', '.', $this->precio);//asegurar numero en "ingles"
    $iva= (float)str_replace( ',', '.', $this->iva);//asegurar numero en "ingles"
    $importeBase=  $cantidad * $precio;
    $cuotaIva= $importeBase * $iva / 100;
    
    $datos= array(
      'idLinea'=>$this->idLinea,
      'serie'=>$this->serie,
      'numero'=>$this->numero,
      'orden'=>$this->orden,
      'refArt'=>$this->refArt,
      'texto'=>$this->texto,
      'cantidad'=>$cantidad,
      'precio'=>$precio,
      'iva'=>$iva,
      'importeBase'=> $importeBase,
      'cuotaIva'=> $cuotaIva,
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
    $sql= 'INSERT INTO pedidoslin ('.$campos.') VALUES ('.$valores.')';
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
    $sql= 'UPDATE pedidoslin SET '.$datos.' WHERE '.$condicion;
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
    $sql= 'DELETE FROM pedidoslin WHERE '.$condicion;
    //----------
    return $sql;
  }//sqlEliminar

  //-------------------------------------------------------------------------
  //Obtener la orden SQL para listar los registros de "pedidoslin" de la tabla, 
  //sin imponer limitaciones al número de filas resultantes, ya que la posible
  //paginación se añade posteriormente. 
  //Esta consulta está enfocada a la busqueda de registros para la sección de 
  //administración de pedidoslin o similar.
  // - $orden --> Se puede indicar el orden de los resultados tal cual se 
  // haría en la parte "ORDER BY" de la orden SQL, por defecto se ordena 
  // por "serie,numero,orden".
  // - $serie --> Opcional. Parte de la referencia del pedido del que obtener
  // las lineas asociadas.
  // - $numero --> Opcional. Parte de la referencia del pedido del que obtener
  // las lineas asociadas.
  // *** Si no se indica "$serie" o "$numero", no se aplica el filtro, salen 
  // todas las lineas de la tabla.

  public static function sqlListar( $orden='', $serie=null, $numero=null)
  {
    if (empty($orden)) $orden= 'serie ASC, numero ASC, orden ASC';
    //----------
    $sql= 'SELECT * FROM pedidoslin';
    if (($serie !== null) && ($numero !== null)) {
      $sql.= ' WHERE ((serie="'.basedatos::escapar( $serie).'")'
              .' AND (numero="'.basedatos::escapar( $numero).'"))';
    }//if
    $sql.=' ORDER BY '.$orden;
    return $sql;
  }//sqlListar
  
  //-------------------------------------------------------------------------
  //Métodos de apoyo a la linea de pedido.
  //-------------------------------------------------------------------------
  
  //-------------------------------------------------------------------------
  //Cargar la linea de pedido con el modelo de datos del articulo que tiene asociado.
  public function cargarArticulo()
  {
    //Si el articulo no esta cargado, o si lo esta, hay referencia en la linea de pedido
    //y las referencias no coinciden entre si, se intenta cargar.
    if (($this->articulo === null) || 
          (($this->articulo !== null) && !empty($this->refArt) 
              && ($this->articulo->referencia != $this->refArt))) {
      //Crear la instancia nueva y cargarla, y si falla, dejarla nula.
      $this->articulo= new articulo;
      if (!$this->articulo->cargar( $this->refArt)) $this->articulo= null;
    }//if
    return ($this->articulo !== null);
  }//cargarArticulo
  
  //-------------------------------------------------------------------------
}//pedidolin