<!--Crear una función PHP que reciba el código de un color y un número. La función
escribirá una celda de una tabla (sólo la celda) con el color de fondo pasado como
parámetro y el número escrito.
Crear después una aplicación Web que pida al usuario un mes concreto y (por medio
de listas desplegables) le permita elegir el color para los días festivos, para los fines
de semana y para los laborables. La aplicación Web mostrará el mes elegido por el
usuario, marcando cada día con el color correspondiente. 
-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 8</title>
</head>
<body>
    <form action="#" method="post">
        <label for="">Mes</label>
        <input type="text" name="mes"><br>
        <label for="">Color laborales</label>
        <select>
            <option value="orangered" name="laborales">Orangered</option>
            <option value="cyan" name="laborales">Cyan</option>
            <option value="palegreen" name="laborales">Palegreeen</option>
        </select>
        <br>
        <label for="">Color festivos</label>
        <select>
            <option value="orangered" name="festivos">Orangered</option>
            <option value="cyan" name="festivos">Cyan</option>
            <option value="palegreen" name="festivos">Palegreeen</option>
        </select>
        <input type="submit" name="enviar">
    </form>
    
    <?php
    if (isset($_POST['enviar']))
    {
        $mes = $_POST['mes'];
        $cont = 0;
        
        festivo($mes);
        echo '<table><th>L</th><th>M</th><th>X</th><th>J</th><th>V</th><th>S</th><th>D</th><tr>';
        for ($i = 1; $i < diasMes($mes); $i++)
        {
            if ($cont < 5)
            {
               echo "<td bgcolor=cyan>$i</td>";
                $cont++;
            }else{
               echo "<td bgcolor=palegreen>$i</td>"; 
            }
            
            if($i % 7 == 0){
                echo '</tr></tr>';
                $cont = 0;
            }
        }
        echo '</table>';
    }
    
    function diasMes ($m)
    {
        $marca = mktime(0, 0, 0, $m, 1, 2017);
        
        return date('t', $marca);
    }
    
    function festivo($m){
        $festivos = array(1 => array(5), 2 => array(14, 28));
        
        print_r(array_values($festivos[$m]));
        
        for ($i = 0; $i < count($festivos[$m]); $i++)
        {
            echo $festivos[$m].'</br>';
        }
        
    }
    ?>
</body>
</html>