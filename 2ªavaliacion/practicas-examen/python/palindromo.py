""" Verificador de palíndromos: Escribe un programa que verifique si una palabra ingresada por el usuario es un palíndromo (es decir, si se lee igual de adelante hacia atrás que de atrás hacia adelante). Por ejemplo, "reconocer" es un palíndromo. """


palabra = "reconofcer"

palabra=palabra.replace(" ","").lower()

print(palabra)

listaPalabra = list(palabra)

listaPalabra.reverse()

palabraInvertida = "".join(listaPalabra)

print(palabraInvertida)

if palabra == palabraInvertida:
    print("Es un palindromo")
    print(palabraInvertida)
    print(palabra)
else:
    print("No es un palindromo")
    print(palabraInvertida)
    print(palabra)
