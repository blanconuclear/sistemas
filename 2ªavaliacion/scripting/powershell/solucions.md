1. Amosa a data

Get-Date

2. Lista os directorios ou arquivos que hai en Windows/System32 e que o seu nome comece por w

Get-ChildItem -Path C:\Windows\System32\w\* -Recurse

3. Fai a seguinte estrutura de directorios e arquivos

New-Item -ItemType Directory -Path "C:\SISTEMAS"
New-Item -ItemType Directory -Path "C:\SISTEMAS\DOS"
New-Item -ItemType Directory -Path "C:\SISTEMAS\MANUAL"
New-Item -ItemType File -Path "C:\SISTEMAS\MANUAL\manual.txt"
New-Item -ItemType Directory -Path "C:\SISTEMAS\EXERCICIOS"
New-Item -ItemType File -Path "C:\SISTEMAS\EXERCICIOS\folla1.txt"
New-Item -ItemType File -Path "C:\SISTEMAS\EXERCICIOS\folla2.txt"

4. Copia todos os ficheiros do directorio ejercicios a C cunha soa orde

Copy-Item -Path "C:\ejercicios\*" -Destination "C:\" -Recurse

5. Crea un directorio en C que se chame PRACTICA2 e copia o ficheiro LABEL.EXE do subdirectorio SYSTEM32 de WINDOWS en PRACTICA2 pero co nome ETIQUETA.EXE. Podes utilizar 2 comandos

New-Item -ItemType Directory -Path "C:\PRACTICA2"
Copy-Item -Path "C:\Windows\System32\LABEL.EXE" -Destination "C:\PRACTICA2\ETIQUETA.EXE"

6. Copia todos os ficheiros do directorio EXERCICIOS a PRACTICA2 cunha soa orde

Copy-Item -Path "C:\SISTEMAS\EXERCICIOS\*" -Destination "C:\PRACTICA2" -Recurse

7. Copia todos os ficheiros do directorio PRACTICA2 que teñen extensión txt no directorio DOS pero coa extensión sol, cunha soa orde

Copy-Item -Path "C:\PRACTICA2\*.txt" -Destination "C:\SISTEMAS\DOS" -Recurse -Exclude \*.sol
Rename-Item -Path "C:\SISTEMAS\DOS\*.txt" -NewName { $_.Name -replace '\.txt$', '.sol' }

8. Con ruta absoluta renomea o ficheiro folla1.sol que se atopa en DOS como folla.dat

Rename-Item -Path "C:\SISTEMAS\DOS\folla1.sol" -NewName "folla.dat"

9. Copia todo o directorio Sistemas noutro directorio chamado CopySist cunha soa orde

Copy-Item -Path "C:\SISTEMAS\*" -Destination "C:\CopySist" -Recurse

10. Ubícate na túa carpeta de usuario con ruta absoluta

Set-Location -Path "C:\Users\TuUsuario"

11. Utilizando ruta relativa borra o directorio CopySist

Remove-Item -Path ".\CopySist" -Recurse

12. Pon atributo oculto ao arquivo folla.dat que hai no directorio DOS. Tes que facer algo especial para listar dito arquivo oculto?

Set-ItemProperty -Path "C:\SISTEMAS\DOS\folla.dat" -Name Attributes -Value ([System.IO.FileAttributes]::Hidden)

13. Cambia ao directorio DOS e, utilizando direccionamiento (>), crea un arquivo novo chamado folla.txt

Set-Location -Path "C:\SISTEMAS\DOS"
New-Item -ItemType File -Name "folla.txt"

14. Amosa por pantalla o contido de folla.dat e folla.txt (2 comandos)

Get-Content -Path "C:\SISTEMAS\DOS\folla.dat"
Get-Content -Path "C:\SISTEMAS\DOS\folla.txt"

15. Engade o contido de folla.txt a folla.dat sen borrar o que hai en folla.dat

Add-Content -Path "C:\SISTEMAS\DOS\folla.dat" -Value (Get-Content "C:\SISTEMAS\DOS\folla.txt")
