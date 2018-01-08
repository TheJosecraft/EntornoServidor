<?php
$numero1 = $_GET['numero1'];
$numero2 = $_GET['numero2'];
$contador = 0;
if($numero1 > $numero2){
    echo "<table border><tr>";
    for($i = $numero2; $i <= $numero1; $i++){
        echo "<td>$i</td>";
        $contador++;
        if($contador % 10 == 0){
            echo "</tr>";
            $contador = 0;
        }
    }
    echo "</tr></table>";
}else{
     echo "<table border><tr>";
    for($i = $numero1; $i <= $numero2; $i++){
        echo "<td>$i</td>";
        $contador++;
        if($contador % 10 == 0){
            echo "</tr>";
            $contador = 0;
        }
    }
    echo "</tr></table>";
}
?>