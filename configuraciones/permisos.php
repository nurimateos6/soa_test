<?php
return array(
  //array(rol, controlador, accion, permitir),
  //array('Invitado', 'inicio', 'inicio', true),
  
  //Permitir acceso al catalogo a todo el mundo.
  //array('*', 'catalogo', '*', true),
  
  //array('Cliente', 'catalogo', '*', true),
  //array('Cliente', 'pedidos', '*', true),
	
  
  //Si no se encuentra coincidencia, PERMITIR TODO al Administrador
  //array('Administrador', '*', '*', true),
  
  //Si no se encuentra coincidencia, PROHIBIR TODO al TODOS
  //array('*', '*', '*', false),
  //Si no se encuentra coincidencia, PERMITIR TODO al TODOS
   array('*', 'inicio', '*', true),

  array('Alumno', 'inicio', '*', true),
  array('Alumno', 'enunciado', '*', true),
  array('Alumno', 'elementos', '*', false),
  array('Alumno', 'alumno', 'alumno', true),
  array('Alumno', 'test', '*', true),
  // array('Alumno', 'alumno', 'crear', true),
    array('Alumno', 'alumno', 'editar', true),

  array('Alumno', 'profesor', '*', false),
  array('Alumno', 'pregunta', '*', false),
  array('Alumno', 'alumno', 'admin', false),
    



  // array('Alumno', '*', '*', false),
  // array('Alumno', '*', '*', false),  
  array('Administrador', '*', '*', true),


);