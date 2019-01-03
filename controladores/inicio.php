<?php

modelo::usar('alumno');
class controlador_inicio extends controlador
{

  //-------------------------------------------------------------------------
  public function accion_inicio()
  {

   $usuario = sesion::get('usuario');

    vista::generarPagina( 'portada', array( 'usuario'=>$usuario));
  }//accion_inicio


  //accion para registrase
  public function accion_registro()
  {
    $bien= false;
    $error= '';
    $modelo= new alumno;
    $checkVacios = false;
    $checkPass = false;
    $checkMail = false;

    if(isset($_POST['alumno'])){
    
        foreach($_POST['alumno'] as $c => $valor){

            if($valor == "") $checkVacios = true;
        }
    
    //----------
    //Si hay datos del formulario alumno, se intenta crear nuevo...
    if (!$checkVacios) {

      //comprobar email y password formulario

      if($_POST['alumno']['password'] === $_POST['alumno']['password1']) $checkPass = true;
      if($_POST['alumno']['email'] === $_POST['alumno']['email1']) $checkMail = true;


      if(!$checkMail || !$checkPass){

          //Error email y contraseña repetidos
        $error = "Error repetición email/password.";
              vista::generarPagina( 'registro', array('modelo'=>$modelo,'error'=>$error));

      }else{

          //comprobar que el email no existe en la base de datos.
          $sql = $modelo->sqlBuscar('email ="'. $_POST['alumno']['email'] .'"');
          $numRegistros = basedatos::contar($sql);

           if($numRegistros > 0){

              //Error email en base de datos
              $error = "Ya existe el email en la base de datos";
              vista::generarPagina('registro', array('modelo'=>$modelo,'error'=>$error));


            }else{
              
                
                //Generar id
                $sql = $modelo->sqlListar('id DESC');
                $registro = basedatos::obtenerUno( $sql);


                //Si no hay usuarios en la base de datos, establecemos el primer ID, si no, incrementamos el anterior.
                if($registro['id'] != null) $_POST['alumno']['id'] = ++$registro['id'];
                else $_POST['alumno']['id'] = "ID00000";

                //establecemos el nivel, al ser un nuevo usuario, el nivel será 1.
                $_POST['alumno']['nivel'] = 1;    
                
                //Hashear password en md5...
                $_POST['alumno']['password'] = md5($_POST['alumno']['password']);

                //Copiar los datos del formulario...
                $modelo->llenar($_POST['alumno']);
                //print_r($modelo);

                //Intentar guardar validando antes el modelo...
                $bien= $modelo->guardar();




                //Insertar primer nivel para alumno recien registrado
                $modelo->sqlInsertarTestAlumno($modelo->id);


                //Crear el directio de usuario
                $ruta = './usuarios/'.$modelo->id;
                      
                if(!mkdir($ruta,0777,true)) $bien = $bien and false;
                
                //Copiar el avatar generico por defecto.
                $copia = $ruta."/avatar.jpg";
                $default = "./images/default.jpg";

                if (!copy($default,$copia)) $bien = $bien and false;
               
                 //----------
                 //Dar una respuesta segun el resultado del proceso.
                  if ($bien) {
                    //echo $error;
                      
                      
                     vista::redirigir( array( 'inicio'));
//
                  }else {
                    $error= 'No se ha podido guardar el alumno nuevo.'; 
                    //echo $error;
                    vista::generarPagina( 'registro', array('modelo'=>$modelo,'error'=>$error));
                  }//if 
           }
      }
    }else{

        $error="Se dejaron campos sin rellenar";
        vista::generarPagina( 'registro', array('modelo'=>$modelo,'error'=>$error));

    }
    }else{

      vista::generarPagina( 'registro', array('modelo'=>$modelo,'error'=>$error));
      
    }


  }//accion_registro


  //Accion para conectar como usuario
  public function accion_login()
  {
    //Extraer Datos para ejecucion
    $error ='';
    $valido= false;
    $bloqueado = false;
    $usuario= new usuario();
    $alumno = new alumno();


    if(isset($_POST['usuario'])){

      if (isset($_POST['usuario']['login'])) $usuario->login= $_POST['usuario']['login'];
      if (isset($_POST['usuario']['password'])) $usuario->password= md5($_POST['usuario']['password']);
      //Comprobar Usuario y contraseña validos
      //Comprobar si existe en la base de datos, y si es asi, comprobar la password

      $sql = $alumno->sqlBuscar("email='". $usuario->login ."'");
    
      $existe = basedatos::contar($sql);

      if(!($existe > 0)){

        $error="El email introducido no existe";
        vista::generarPagina( 'login',array('error'=>$error));

      }else{

            //si coincide la combinacion de email y password....

            $sql = $alumno->sqlBuscar("email='". $usuario->login ."') AND (password='".$usuario->password."'");
            $valido = basedatos::contar($sql);

            $veces= 0;

            if($valido > 0) {
              //guardamos los datos desde la bd en el modelo alumno
              $alumno->llenar(basedatos::obtenerUno($sql));
              $valido = true;

              //Asignar rol, todos son alumnos, a no ser que su id este en el archivo de roles
              $usuario->rol = obtenerRol($alumno->id);
              if($usuario->rol == null) $usuario->rol = 'Alumno';

              $usuario->id = $alumno->id;
              $usuario->login = $alumno->email;
              $usuario->nombre = $alumno->nombre;
              $usuario->apellidos= $alumno->apellidos;
              $usuario->password= '';


              //establecemos la sesion

              sesion::set('usuario', $usuario);
              sesion::set('usuario.veces', null);
              vista::redirigir( array( 'inicio'));
 
              }else{
                //bloquear con 5 login erroneos
                $error = "La combinacion de email/password introducida no es correcta";
                $veces= 1 + sesion::get('usuario.veces', 0);
                $bloqueado= ($veces > 5);
                sesion::set('usuario.veces', $veces);                
                vista::generarPagina( 'login',array('error'=>$error));

                if($bloqueado){

                  generar_pagina_error( 
                    'El acceso a la aplicación está bloqueado por haber fallado'
                  . ' más de '.$veces.' veces. '
                  );


                }
              
            }
      }


    }else{

      vista::generarPagina( 'login',array('error'=>$error));      

    }
    
    
  }//accion_login


  //Accion para desconectarse 
  public function accion_logout()
  {
    
    //eliminar la sesion
    sesion::clear();

    vista::redirigir( array( 'inicio'));
    
  }//accion_logout


}//class controlador_inicio
