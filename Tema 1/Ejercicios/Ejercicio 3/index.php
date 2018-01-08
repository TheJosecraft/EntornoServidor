<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 3</title>
</head>
<body>
    <?php
        $n1 = 25;
        $n2 = 13;
        $suma = $n1 + $n2;
        $resta = $n1 - $n2;
        $multiplicacion = $n1 * $n2;
        $division = $n1 / $n2;
    
    
    ?>
    
    <table border="0">
        <tr bgcolor="orange">
            <td align="center">Operación</td>
            <td align="center">Resultado</td>
            <td align="center">Operación</td>
            <td align="center">Resultado</td>
        </tr>
        <tr bgcolor="lightgrey">
            <td align="center"><?php echo $n1. "+" .$n2?></td>
            <td align="center"><?php echo $suma ?></td>
            <td align="center"><?php echo $n1. "*" .$n2 ?></td>
            <td align="center"><?php echo $multiplicacion ?></td>
        </tr>
        <tr bgcolor="#E6E6E6">
            <td align="center"><?php echo $n1. "-" .$n2 ?></td>
            <td align="center"><?php echo $resta ?></td>
            <td align="center"><?php echo $n1. "/" .$n2 ?></td>
            <td align="center"><?php echo $division ?></td>
        </tr>
    </table>
</body>
</html>