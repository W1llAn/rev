#!/bin/bash

TOUCH = "touch"
BASEDIR = "/home/proyectos"
MKDIR = "mkdir"
USERADD = "useradd"
CHOWN = "chown"
CHMOD = "chmod"

$USERADD -m -s - user_p1
$USERADD -m -s - user_p2
$USERADD -m -s - user_p3

$MKDIR $BASEDIR/proyecto1
$MKDIR $BASEDIR/proyecto2
$MKDIR $BASEDIR/proyecto3

$CHOWN user_p1 $BASEDIR/proyecto1
$CHOWN user_p2 $BASEDIR/proyecto2
$CHOWN user_p3 $BASEDIR/proyecto3

$TOUCH $BASEDIR/proyecto1/config_p1.conf
$TOUCH $BASEDIR/proyecto2/config_p2.conf
$TOUCH $BASEDIR/proyecto3/config_p3.conf

$TOUCH $BASEDIR/proyecto1/activity_p1.log
$TOUCH $BASEDIR/proyecto2/activity_p2.log
$TOUCH $BASEDIR/proyecto3/activity_p3.log

$CHMOD 666 $BASEDIR/proyecto1/config_p1.conf
$CHMOD 666 $BASEDIR/proyecto2/config_p2.conf
$CHMOD 666 $BASEDIR/proyecto3/config_p3.conf

$CHMOD user_p1 $BASEDIR/proyecto1
$CHMOD user_p2 $BASEDIR/proyecto2
$CHMOD user_p3 $BASEDIR/proyecto3
