<!-- Escribir una función ASP “contar_letra()” que reciba una frase y una letra, la función
devolverá el número de veces que aparece la letra en la cadena.
Agregar a esta función un tercer parámetro “casesensitive” con el que el usuario
pueda elegir si quiere que la función distinga entre mayúsculas y minúsculas. Si el
usuario no dice nada, la función sí distinguirá entre mayúsculas y minúsculas.
 -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Ejercicio 1</title>
</head>
<body>
	<%

	resultado = contar_letra("ana", "a")

	response.write(resultado)

	function contar_letra(frase, letra)
		contar_letra = 0
		for i = 1 to len(frase)
			if mid(frase, i, 1) = letra then
				contar_letra = contar_letra + 1
			end if
		next
	end function
	%>
</body>
</html>