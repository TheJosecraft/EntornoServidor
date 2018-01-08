<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Ejercicio 18</title>
</head>

<body>
    <?php
        $palabras['palabra1'] = "arbol";
        $palabras['palabra2'] = "casa";
        $palabras['palabra3'] = "tren";
        $palabras['palabra4'] = "ciudad";
    
        echo "<table border>";
        echo "<tr><th bgcolor='orange'>POSICIÓN</th><th>VALOR</td></tr>";
        foreach($palabras as $i => $cont){
            echo "<tr><td>$i</td><td>$cont</td></tr>";
        }
        echo "</table>";
    ?>
</body>

</html>
