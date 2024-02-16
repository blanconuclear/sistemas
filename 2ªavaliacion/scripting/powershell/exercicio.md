#Exercicio

1.Amosa a data.

```
Get-Date
```

2.Lista os directorios ou arquivos que hai en Windows/System32 e que o seu nome comece por w.

```
Get-ChildItem -Path C:\Windows\System32\w* -Recurse
```

3.Fai a seguinte estrutura de directorios e arquivos:

```
SISTEMAS
DOS
MANUAL
--manual.txt
EXERCICIOS
--folla1.txt
--folla2.txt
```

```
mkdir sistemas
mkdir dos
mkdir manual
New-Item .\manual\manual.txt
mkdir exercicios
New-Item .\exercicios\folla1.txt
```

```
New-Item -ItemType Directory -Path "C:\SISTEMAS"
New-Item -ItemType Directory -Path "C:\SISTEMAS\DOS"
New-Item -ItemType Directory -Path "C:\SISTEMAS\MANUAL"
New-Item -ItemType File -Path "C:\SISTEMAS\MANUAL\manual.txt"
New-Item -ItemType Directory -Path "C:\SISTEMAS\EXERCICIOS"
New-Item -ItemType File -Path "C:\SISTEMAS\EXERCICIOS\folla1.txt"
New-Item -ItemType File -Path "C:\SISTEMAS\EXERCICIOS\folla2.txt"
```

4.Copia todos os ficheiros do directorio ejercicios a C cunha soa orde.

```
Copy-Item -Path ".\ejercicios\*" -Destination "C:\"
```

5.Crea un directorio en C que se chame PRACTICA2 e copia o ficheiro LABEL.EXE do subdirectorio SYSTEM32 de WINDOWS en PRACTICA2 pero co nome ETIQUETA.EXE. Podes utilizar 2 comandos.

```
# Crea o directorio "PRACTICA2" na unidade C
New-Item -ItemType Directory -Path "C:\PRACTICA2"

# Copia o archivo "LABEL.EXE" de "System32" a "PRACTICA2" co nome "ETIQUETA.EXE"
Copy-Item -Path "C:\Windows\System32\LABEL.EXE" -Destination "C:\PRACTICA2\ETIQUETA.EXE"

```
