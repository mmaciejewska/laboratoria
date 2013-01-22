#!/bin/bash

i=$[1]
while [ $i == 1 ]; do

echo 'O której godzinie powinieneś jeść posiłki?'
echo 'śniadanko o:'
read sniadanie
echo 'drugie śniadanie o:'
read dsniadanie

if [ $sniadanie -ge $dsniadanie ]
	then
		echo 'Drugie śniadanie powinno być po śniadaniu.'
		echo 'Popraw wprowadzane godziny.'
	else

echo 'obiad o:'
read obiad

if [ $dsniadanie -ge $obiad ]
	then
		echo 'Obiad powinien być po drugim śniadaniu.'
		echo 'Jeszcze raz wpisz godziny.'
	else

echo 'podwieczorek o:'
read podw

if [ $obiad -ge $podw]
	then
		echo 'Podwieczorek powinien być po obiedzie.'
		echo 'Jeszcze raz wpisz godziny.'
	else

echo 'kolacja o:'
read kolacja

if [ $podw -ge $kolacja ]
	then
		echo 'To kolacja powinna być ostatnia.'
		echo 'Jeszcze raz wpisz godziny.'
	else
echo 'to wszystko!'
i=$[0]

fi
fi
fi
fi
done


touch jedzenie.txt

echo 'Śniadanie o godzinie:' > jedzenie.txt
echo "$sniadanie" >> jedzenie.txt
echo 'Drugie śniadanie o godzinie:' >> jedzenie.txt
echo "$dsniadanie" >> jedzenie.txt
echo 'Obiad o godzinie:' >> jedzenie.txt
echo "$obiad" >> jedzenie.txt
echo 'Podwieczorek o godzinie:' >> jedzenie.txt
echo "$podw" >> jedzenie.txt
echo 'Kolacja o godzinie:' >> jedzenie.txt
echo "$kolacja" >> jedzenie.txt
echo 'Gratuluję! Właśnie ustaliłeś o której codziennie chcesz jeść posiłki.'
echo 'To jeden z najważniejszych kroków podczas prowadzenia zdrowego trybu życia.'
echo 'Powodzenia w dotrzymaniu terminów! '
