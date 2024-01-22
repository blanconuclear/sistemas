# TAREFA

- Crea a seguinte estrutura de directorios ~/un/dous/tres dunha sóa vez, cun único comando e sen que existan nin uno, nin dous nin tres:

```
efren@debian:~$ mkdir -p un/dous/tres
```

- Amosa a estrutura de directorios completa do teu home:

```
efrencorzonvazquez at Mac-mini-de-Efren in ~/Desktop/ciclo DAW/programacion/folla1.12 (main●●)
$ tree
.
├── Exercicio1.java
├── Exercicio2.java
├── Exercicio3.java
├── Exercicio4.java
├── Folla 1.12. Repaso.pdf
└── ProbaFuncion.java

1 directory, 6 files
```

- Listar os directorios de etc que comecen por e:

```
efren@debian:/etc$ ls -d e*
e2scrub.conf  emacs  environment  environment.d  ethertypes
```

- Listar os dispositivos do equipo que comecen por c e a súa terceira letra sexa unha r:

```
efren@debian:/etc$ ls -l c?r*
total 4
drwxr-xr-x 2 root root 4096 nov  4 13:09 native-messaging-hosts
```

- Listar todos os discos duros e particións do equipo:

```
efren@debian:/home$ lsblk
NAME   MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
sr0     11:0    1 1024M  0 rom
vda    254:0    0   64G  0 disk
├─vda1 254:1    0  512M  0 part /boot/efi
├─vda2 254:2    0 62,5G  0 part /
└─vda3 254:3    0  976M  0 part [SWAP]
```

- Listar o contido do directorio home do usuario que está conectado actualmente, amosando os arquivos ocultos e ordenados de más antigos a máis recentes:

```
efren@debian:/home$ ls -la -t
total 12
drwx------ 17 efren efren 4096 dic  8 22:50 efren
drwxr-xr-x 19 root  root  4096 dic  8 22:28 ..
drwxr-xr-x  3 root  root  4096 nov  4 13:10 .
```

- Como se pode diferenciar un arquivo dun directorio do resultado anterior?:

```
drwx------ 17 efren efren 4096 dic  8 22:50 efren  //A d do principio indica que é un directorio//
```

- Indica tres comandos para ver o contido dun arquivo sen utilizar un editor.

```
nano, cat, more
```

- Indica quen son os propietarios (usuario e grupos) do arquivo /etc/passwd e que comando usaches para sabelo:

```
root@debian:~# ls -l /etc/passwd
-rw-r--r-- 1 root root 2039 dic  8 22:22 /etc/passwd
```

- Un usuario "normal" pode ler o contido de /etc/passwd? E de /etc/shadow? Por que?:

```
Sí. Porque ten permisos de lectura e escritura
```

- Crea un directorio denominado propietario no teu home. Agora fai unha copia de /etc/passwd a ese novo directorio, quen son os seus propietarios?:

```
mkdir ~/propietario
cp /etc/passwd ~/propietario
ls -l ~/propietario/passwd
```

- Crea un ficheiro baleiro e oculto que se chame oculto.txt:

```
efren@debian:~$ touch .oculto-txt
```

- Agora mete no ficheiro anterior o seguinte contido "Este fichero está oculto". Só podes facelo con comandos, non con editores

```
echo "Este fichero está oculto" > ~/.oculto.txt
```
