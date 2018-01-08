<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Enviar</title>
    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
    <style type="text/css">
        
        tr:nth-child(2n) {
            background-color: #E46F72;
        }

        table {
            border-color: red;
        }

        th {
            padding-left: 10px;
            padding-right: 10px;
        }

        body {
            font-family: 'Poppins', sans-serif;
        }

    </style>
</head>

<body>
    <?php
    //Obtenemos los datos con la variable $_POST
    $usuario1 = $_POST['usuario1'];
    $password1 = $_POST['password1'];
    
    $usuario2 = $_POST['usuario2'];
    $password2 = $_POST['password2'];
    
    $usuario3 = $_POST['usuario3'];
    $password3 = $_POST['password3'];
    
    $usuario4 = $_POST['usuario4'];
    $password4 = $_POST['password4'];
    
    $usuario5 = $_POST['usuario5'];
    $password5 = $_POST['password5'];
    
    //Guradamos los datos en un array asociativo en el que la posición es el usuario y el valor la contraseña
    $usuarios = array($usuario1 => $password1, $usuario2 => $password2, $usuario3 => $password3, $usuario4 => $password4, $usuario5 => $password5);
       
    //Ordenamos el array para que aparezca ordenado en la tabla
    ksort($usuarios);
    
    //Mostramos la cabecera de la tabla
    echo "<table border cellspacing=0><th>Usuario</th><th>Contraseña</th><th>Usuario Almacenado</th><th>Contraseña almacenada</th>";
    
    //Recorremos el array con los usuarios y las contraseñas
    foreach($usuarios as $user => $pass){
        
        //Creamos una variable $userMod en la que almacenaremos el nombre de usuario en mayúsculas y con los espacios cambiados a guiones bajos(_)
        $userMod = preg_replace("`[\s]`", "_", strtoupper($user));
        
        //Rellenamos los huecos restantes de la variable $user_mod con la función str_pad hasta que la longirud sea 15
        $userMod = str_pad($userMod, 15, "?");
        
        //Mostramos el usuario y la contraseña en la tabla
        echo "<tr><td>$user</td><td>$pass</td>";
        
        //Comprobamos que la contraseña no contenga el usuario en mayúsculas ni en minúsculas
        if(strripos($pass, $user) == false){
            
            //Comprobamos que el usuario esté bien formado en caso contrario se mostrará ERROR EN USUARIO
            if(!preg_match("`^[0-9A-Za-z\s]{6}$`", $user)){
                echo "<td bgcolor=red>ERROR EN USUARIO</td><td bgcolor=red>ERROR EN USUARIO</td></tr>";
            }elseif(!preg_match("`^(?=.*[0-9])(?=.*[a-zA-Z])(?=.*[\s]).{6,15}$`", $pass)){
                //Comprobamos que la contraseña esté bien formada, en caso contrario se mostrará ERROR EN CONTRASEÑA
                echo "<td bgcolor=red>ERROR EN CONTRASEÑA</td><td bgcolor=red>ERROR EN CONTRASEÑA</td></tr>";
            }else{
                //En caso de que todo esté correcto se mostrará la variable $user_mod y la contraseña codificada en MD5
                echo "<td>$userMod</td><td>".md5($pass)."</td></tr>"; 
           }
        }else{
            echo "<td bgcolor=red>ERROR EN USUARIO</td><td bgcolor=red>ERROR EN USUARIO</td></tr>";
        }
    }
    echo "</table>";
    ?>

</body>

</html>
