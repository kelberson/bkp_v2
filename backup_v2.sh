#!/bin/bash






## VARIAVEIS

MULTI=$(mysql -uroot -p123456 -B -N -e "select count(*)FROM controle.pf_loja")
MONO=$(mysql -uroot -p123456 -B -N -e "select concat(idlojaintegracao)FROM controle.pf_loja")

if [ $MULTI -ge 2 ]
then 
	LOJA=MULTILOJA
else
	LOJA=$MONO
fi


echo "SERVIDOR LOJA...: $LOJA"
