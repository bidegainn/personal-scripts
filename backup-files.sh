#!/bin/bash
# File Backup

############################
##     INSTRUCCIONES      ##
############################
## Este script permite realizar una copia de seguridad de la carpeta que necesitamos 
## El resultado será un archivo comprimido y empaquetado en .tar


USERNAME="$(whoami)"
NAME_OF_BK="Backup_$(date +%Y%m%d).tar.bz2"-$USERNAME

read -p "Introduce la carpeta: " FOLDER

tar -cvf $NAME_OF_BK.tar $FOLDER


echo "El archivo se comprimio correctamente, se puede encontrar con el nombre", $NAME_OF_BK
