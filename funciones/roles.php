<?php
//Un sistema basico de gestion de permisos
//Funcion que, pasada una referencia, nos dice si el usuario tiene un rol especial, devolviendolo. Si el usuario no tiene un rol especial, devuelve null.
//Nos apoyaremos en un archivo de configuración, donde incluiremos las referencias y rolesde los usuarios deseados.

function obtenerRol($referencia){

  //Preparar la lista roles
  static $_roles= null;
  if (!is_array($_roles)) {
    $_roles= require( 
    dirname(dirname(__FILE__))
    .'/configuraciones/roles.php'
  );
  }//if

  //si encontramos la referencia en el archivo de configuración, devolvemos el rol
  foreach($_roles as $ref=>$rol){
    if ($referencia===$ref) return $rol;
  }

  return null;

}