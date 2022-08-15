#!/bin/bash
# File Backup
#github: github.com/bidegiann
#web: bidegain.com.ar

############################
##     INSTRUCCIONES      ##
############################
## Este script permite realizar una copia de seguridad de la carpeta que necesitamos 
## El resultado será un archivo comprimido y empaquetado en .tar


USERNAME="$(whoami)"
NAME_OF_BK="Backup_$(date +%Y%m%d).tar.bz2"-$USERNAME

read -p "Enter the name of the folder you want to make backup: " FOLDER

tar -cvf $NAME_OF_BK.tar $FOLDER


echo "The file was successfully compressed, you can find it with the name", $NAME_OF_BK
