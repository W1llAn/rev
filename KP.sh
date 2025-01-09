#!/bin/bash

#declaración de variables
CD = "cd"
ECHO = "echo"
TOUCH = "touch"
CHMOD = "chmod"
CHOWN="chown"
MKDIR = "mkdir"
USERADD = "useradd"

# Crear estructura de carpetas
BASE_DIR = "home/proyecto"
PROY_UNO = "$BASE_DIR/proy_uno"
PROY_DOS = "$BASE_DIR/proy_dos"
PROY_TRES = "$BASE_DIR/proy_tres"
USER_P1 = "$PROY_UNO/user_p1"
USER_P2 = "$PROY_DOS/user_p2"
USER_P3 = "PROY_TRES/user_p3"

# Crear carpetas
$ECHO "Creando carpetas"
$MKDIR $PROY_UNO $PROY_DOS $PROY_TRES

# Crear usuarios
$USERADD -m -s $USER_P1 $CHOWN $PROY_UNO:$PROY_UNO $USER_P1
$USERADD -m -s $USER_P2 $CHOWN $PROY_DOS:$PROY_DOS $USER_P2
$USERADD -m -s $USER_P3 $CHOWN $

$CHMOD 777 $USER_P3
$CHMOD 777 $USER_P2
$CHMOD 777 $USER_P1

# Archivos de configuración
$CD $PROY_UNO
$TOUCH config_p1.conf
$TOUCH actividad_p1.log
$CD

$CD $PROY_DOS
$TOUCH config_p2.conf
$TOUCH actividad_p2.log
$CD

$CD $PROY_TRES
$TOUCH config_p3.conf
$TOUCH actividad_p3.log
$CD

#Permisos
$CHMOD 777 $PROY_UNO
$CHMOD 777 $PROY_DOS
$CHMOD 777 $PROY_TRES
