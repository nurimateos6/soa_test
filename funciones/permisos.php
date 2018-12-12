<?php
//Un sistema basico de gestion de permisos
//(c) DAW2 - EPSZ - Univ. Salamanca

function puede_ejecutar($usuario, $accion)
{
  return true;
}



class usuario
{
  public $id= null;
  public $login= null;
  public $password= null;
  public $nombre= 'Invitado';
}//class usuario
