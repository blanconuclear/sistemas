import os

def menu():
    print("Escolle unha opción: ")
    print("sumar: ")
    print("restar: ")
    print("multiplicar: ")
    print("crear carpeta")
    print("ruta")


tipoOperacion = ""

while tipoOperacion != "salir":
    tipoOperacion = input("Dime tipo de operacion a realizar o escribe salir: ")

    match tipoOperacion:
        case "sumar":
            n1 = int(input("Dime o número 1:"))
            n2 = int(input("Dime o número 2:"))
            suma = n1 + n2
            print("La suma es:", suma)
        case "crear carpeta":
            os.mkdir("proba")
        case "ruta":
            os.system('clear')
            os.
        case "salir":
            print("Saliendo del programa...")
            break
        case _:
            print("Operación no reconocida.")
