import os

saludo= "Hola mundo"
nombre= "Jose"

print(f"{saludo} {nombre}")
"""
dimeTuNombre= input("Cual es tu nombre: ")

print(f"{saludo} {dimeTuNombre}")
"""
"""
#Condicionales
altura= int(input("Cual es tu altura: "))


if altura >= 300:
    print("Eres una persona altisima")
elif altura >=180:
    print("Eres alta")
else:
    print("Eres normal")

"""
#Así podemos crear unha carpeta
nomeCarpeta = input("Dime o nome da carpeta")

os.mkdir(nomeCarpeta)