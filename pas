#!/bin/bash

PASSES[gmail]=masterfox50
PASSES[aol]=foxtrot30
PASSES[amazon]=unlockme1
PASSES[outlook]=ugotNOclue2
PASSES[facebook]="karma54!"

SQ[1]="Who?"
SQ[2]="What?"
SQ[3]="When?"
SQ[4]="Where?"
SQ[5]="Why?"

QA[1]="Me"
QA[2]="It"
QA[3]="Now"
QA[4]="Here"
QA[5]="Because"

function act (){
	echo Account type:
	read AC
	query
}

function query (){
	Q=`shuf -i 1-5 -n 1`
	echo ${SQ[$Q]}
	read GA
	if [ "$GA" == "${QA[$Q]}" ] 
	then
		act2
	else
		query
	fi
}

function act2 (){
	PS=${PASSES[$AC]}
	echo $PS
	read -p "Is that all?" yn
	case $yn in
		[Yy]* ) exit;;
		[Nn]* ) act;;
		* ) echo "Please answer yes or no.";;
	esac
}

act
