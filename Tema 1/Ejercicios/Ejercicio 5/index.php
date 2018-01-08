<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 5</title>
</head>
<body>
    <?php 
        $matriz['nombre'] = "Jorge";
        $matriz['apellido'] = "Pérez";
        $matriz['edad'] = 35;
        $matriz['altura'] = 1.77;
        $matriz['peso'] = 80;
        $matriz['pelo'] = "Moreno";
        $matriz['estado'] = "Soltero";
    
        echo "<table>
        <tr>
            <td bgcolor='orange'>Nombre</td>
            <td bgcolor='orange'>Apellido</td>
            <td bgcolor='orange'>Edad</td>
            <td bgcolor='orange'>Altura</td>
            <td bgcolor='orange'>Peso</td>
            <td bgcolor='orange'>Pelo</td>
            <td bgcolor='orange'>Estado</td>
        </tr>
        <tr>
            <td bgcolor='lightgrey'>$matriz[nombre]</td>
            <td bgcolor='lightgrey'>$matriz[apellido]</td>
            <td bgcolor='lightgrey'>$matriz[edad]</td>
            <td bgcolor='lightgrey'>$matriz[altura]</td>
            <td bgcolor='lightgrey'>$matriz[peso]</td>
            <td bgcolor='lightgrey'>$matriz[pelo]</td>
            <td bgcolor='lightgrey'>$matriz[estado]</td>
        </tr>
    </table>";
    ?>
    
    
</body>
</html>