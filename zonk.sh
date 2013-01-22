#!/bin/bash

bramka1=$[1]
bramka2=$[2]
bramka3=$[3]

nagroda=$(($RANDOM % 3+1))
echo "$nagroda"

echo "Którą brmkę wybierasz?"
echo "Co wybierasz?"
select y in 1 2 3 Quit
do
  case $y in
    "1") echo "Wybrałeś bramkę1" ; break;;
    "2") echo "Wybrałeś bramkę2" ; break;;
    "3") echo "Wybrałeś bramkę3" ; break;;
    "Quit") exit ;;
    *) echo "Nic nie wybrałeś"
  esac
done
if [ $y -eq $bramka1 ]
	then 
		if [ $nagroda -eq $[1] ]
			then
				odslonieta=$[$(( $RANDOM % 2+1 ))+1]
			echo "w bramce nr $odslonieta jest ZONK"
			echo "**********************************"
			echo "zmieniasz bramkę?"
			select y in tak nie Quit
			do
  			case $y in
    		"tak") echo "przegrałeś" ; break;;
    		"nie") echo "wygrałeś" ; break;;
    		"Quit") exit ;;
    		*) echo "Nic nie wybrałeś"
  			esac
			done
		fi
		if [ $nagroda == $[2] ]
			then
			odslonieta=$[3]
			echo "w bramce nr $odslonieta jest ZONK"
			echo "**********************************"
			echo "zmieniasz bramkę?"
			select y in tak nie Quit
				do
  				case $y in
    			"tak") echo "wygrałeś" ; break;;
    			"nie") echo "przgrałeś"; break;;
    			"Quit") exit ;;
    			*) echo "Nic nie wybrałeś"
  				esac
				done
		fi
		if [ $nagroda == $[3] ]
			then
			echo "w bramce nr 2 jest ZONK"
			echo "**********************************"
			echo "zmieniasz bramkę?"
			select y in tak nie Quit
				do
  				case $y in
    			"tak") echo "wygrałeś" ; break;;
    			"nie") echo "przgrałeś" ; break;;
    			"Quit") exit ;;
    			*) echo "Nic nie wybrałeś"
  				esac
				done
		fi
fi
if [ $y == $bramka2 ]
	then 
		if [ $nagroda -eq $[2] ]
			then
				odslonieta=$(( $RANDOM % 1+0 ))
				if [ $odslonieta == $[0] ] 
					then $odslonieta=$[1]
				else $odslonieta=$[3]
				fi
			echo "w bramce nr $odslonieta jest ZONK"
			echo "**********************************"
			echo "zmieniasz bramkę?"
			select y in tak nie Quit
			do
  			case $y in
    		"tak") echo "przegrałeś" ; break;;
    		"nie") echo "wygrałeś" ; break;;
    		"Quit") exit ;;
    		*) echo "Nic nie wybrałeś"
  			esac
			done
		fi
		if [ $nagroda == $[3] ]
			then
			odslonieta=$[1]
			echo "w bramce nr $odslonieta jest ZONK"
			echo "**********************************"
			echo "zmieniasz bramkę?"
			select y in tak nie Quit
				do
  				case $y in
    			"tak") echo "wygrałeś" ; break;;
    			"nie") echo "przgrałeś"; break;;
    			"Quit") exit ;;
    			*) echo "Nic nie wybrałeś"
  				esac
				done
		fi
		if [ $nagroda == $[1] ]
			then
			echo "w bramce nr 3 jest ZONK"
			echo "**********************************"
			echo "zmieniasz bramkę?"
			select y in tak nie Quit
				do
  				case $y in
    			"tak") echo "wygrałeś" ; break;;
    			"nie") echo "przgrałeś" ; break;;
    			"Quit") exit ;;
    			*) echo "Nic nie wybrałeś"
  				esac
				done
		fi
fi

if [ $y == $bramka3 ]
	then 
		if [ $nagroda -eq $[3] ]
			then
				odslonieta=$(( $RANDOM % 2+1 ))
			echo "w bramce nr $odslonieta jest ZONK"
			echo "**********************************"
			echo "zmieniasz bramkę?"
			select y in tak nie Quit
			do
  			case $y in
    		"tak") echo "przegrałeś" ; break;;
    		"nie") echo "wygrałeś" ; break;;
    		"Quit") exit ;;
    		*) echo "Nic nie wybrałeś"
  			esac
			done
		fi
		if [ $nagroda == $[2] ]
			then
			odslonieta=$[1]
			echo "w bramce nr $odslonieta jest ZONK"
			echo "**********************************"
			echo "zmieniasz bramkę?"
			select y in tak nie Quit
				do
  				case $y in
    			"tak") echo "wygrałeś" ; break;;
    			"nie") echo "przgrałeś"; break;;
    			"Quit") exit ;;
    			*) echo "Nic nie wybrałeś"
  				esac
				done
		fi
		if [ $nagroda == $[1] ]
			then
			echo "w bramce nr 2 jest ZONK"
			echo "**********************************"
			echo "zmieniasz bramkę?"
			select y in tak nie Quit
				do
  				case $y in
    			"tak") echo "wygrałeś" ; break;;
    			"nie") echo "przgrałeś" ; break;;
    			"Quit") exit ;;
    			*) echo "Nic nie wybrałeś"
  				esac
				done
		fi
fi
exit 0
