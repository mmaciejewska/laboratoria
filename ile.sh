#!/bin/bash

GODZ=$(date '+%H')
echo " "
echo "Jest $GODZ"
echo " "
echo "*************************************************"
echo " "
i=$[2]

while [ $i -le 10 ]; do

spr=$(sed -n ''"$i"p'' jedzenie.txt)

if [ "$spr" -ge "$GODZ" ] 
	then 
		echo "Najbliższy posiłek to:"
		echo " "
		j=$[$i-1]
		sed -n ''"$j","$i"p'' jedzenie.txt
		i=13
	else
		i=$[i+2]
fi

if [ "$i" == 12 ]
	then 
		echo "Wiem, że jesteś głodny."
		echo "Jednak nie masz na dzisiaj już zaplanowanych żadnych posiłków"
fi

done 

echo " "
echo "**************************************************"