#!/bin/sh

echo '''Megszólítás?

1. Polgármester úr!
2. Igazgatónő!
3. mittomén!
4. EGYÉB

'''

read -p "Válassz egy számot:   " beolvasas

if [ $beolvasas == 1 ]
then
    nev="Polgármester úr!"
elif [ $beolvasas == 2 ]
then
    nev="Igazgatónő!"
else
    read -p "Mi legyen a Megszólítás? " nev
fi


echo ''
echo ''
read -p "Mi a link?   " link

fajl=$(date +'%s')

echo """

Tisztelt $nev <br />
<br />
A küldött anyagokat feltöltöttem a weboldalra: <a href="$link">$link</a><br />
<br />
Kérem a biztonság kedvéért ellenőrizze le Ön is,<br />
<br />

""" >> /tmp/$fajl-level.html

$(opera /tmp/$fajl-level.html)


# rm /tmp/$fajl-level.html
