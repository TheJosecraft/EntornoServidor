<!--Crear un sitio web que permita al usuario subir al servidor todos los documentos
que desee. De esta forma, en el sitio web debe haber un formulario donde el
usuario escriba su nombre de usuario e indique el archivo que quiere subir. El
sitio web deberá tener una carpeta llamada “usuarios” y dentro de ella, una nueva
carpeta por cada usuario. Así, cada vez que un usuario quiera subir un
documento, el sitio va a comprobar si el usuario ya tiene creada su carpeta, si no
la tiene la creará y guardará ahí el archivo. Si ya la tiene, simplemente subirá ahí
el archivo y listo. Una vez hecho esto, el sitio debe redireccionar al usuario a la
página del formulario, y encima del formulario habrá un aviso como este: “el
archivo <nombre>, del usuario <nombre_usuario> ha sido subido correctamente” -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 7</title>
</head>
<body>
    <?php
    
    $usuario = $_POST['usuario'];
    
    $documento = $_FILES['doc'];
    
    if(!file_exists("./usuarios/".$usuario)){
        mkdir("./usuarios/".$usuario, 0777, true);
        move_uploaded_file($documento['tmp_name'], "./usuarios/".$usuario."/".$documento['name']);
        header("refresh:1;url=index.php?men=El archivo ".$documento['name']." del usuario ".$usuario."se ha subido correctamente");            
    }else{
       move_uploaded_file($documento['tmp_name'], "./usuarios/".$usuario."/".$documento['name']); 
        header("refresh:1;url=index.php?men=El archivo ".$documento['name']." del usuario ".$usuario." se ha subido correctamente");            

    }
    
    ?>
</body>
</html>