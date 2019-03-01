#!/bin/bash
#ajout 
########################################################################################
ldapsearch -xLLL -h "server.domaine.intra" -w "PASSWORD_lecture_ad"  -b "dc=DOMAINE,dc=INTRA"  -p 3268 -D "lecture_ad@domaine.intra" -s sub "(&(memberof=cn=$HOSTNAME $1,ou=linux,dc=domaine,dc=intra)(!(userAccountControl=514)))" extensionAttribute15 -o ldif-wrap=no |grep extensionAttribute15  | awk '{gsub("extensionAttribute15: ", "");print}'
########################################################################################
##fin de l'ajout
