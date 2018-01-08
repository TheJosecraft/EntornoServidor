<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 4</title>
    <style>
        body{
            font-family: Helvetica, sans-serif;
        }
        
        th{
            background-color: orange;
            padding-right: 70px;
            color: white;
            border-top: 3px solid black;
            border-bottom: 3px solid black;
        }
        
        tr:nth-child(2n){
            background-color: lightgrey;
        }
        
        .fila{
            background-color: forestgreen;
            font-weight: 600;
            color: white;
            padding-left: 5px;
        }
        
        table{
            border-bottom: 3px solid black;
        }
    </style>
</head>
<body>
    <?php
    
    $mascotas = array(0 => array("Nombre" => "Pepe",
                                "Peso" => 4.5,
                                "Color" => "Marrón",
                                "Edad" => 12),
                      
                      1 => array("Nombre" => "Sparky",
                                "Peso" => 3,
                                "Color" => "Blanco",
                                "Edad" => 2),
                      
                      2 => array("Nombre" => "Tobby",
                                "Peso" => 7.2,
                                "Color" => "Beige",
                                "Edad" => 8),
                      
                      3 => array("Nombre" => "Bigotes",
                                "Peso" => 4,
                                "Color" => "Negro",
                                "Edad" => 9),
                      
                      4 => array("Nombre" => "Ricky",
                                "Peso" => 0.1,
                                "Color" => "Verde",
                                "Edad" => 2)
                     );
    echo "<table cellspacing=0>";
    echo "<th class='fila'>fila</th><th>Nombre</th><th>Peso</th><th>Color</th><th>Edad</th>";
    foreach($mascotas as $fila => $nombres){
        echo "<tr>";
        echo "<td class='fila'>$fila</td>";
        foreach($nombres as $nombre => $valor){
            echo "<td>$valor</td>";
        }
        
        echo "</tr>";
    }
    
    echo "</table>";
    
    ?>
</body>
</html>