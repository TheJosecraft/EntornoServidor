<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Ejercicio 2</title>
</head>

<body>
    <?php
    
        $n1 = 5;
        $n2 = 7;
        
        $suma = $n1 + $n2;
    ?>
    
    <table border="1">
        <tr bgcolor="orange">
            <td>Número 1</td>
            <td>Número 2</td>
            <td>Suma</td>
        </tr>
        <tr bgcolor="lightgrey">
            <td><?php echo $n1 ?></td>
            <td><?php echo $n2?></td>
            <td><?php echo $suma?></td>
        </tr>
    </table>
</body>
</html>
