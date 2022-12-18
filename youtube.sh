#!/bin/bash
#!/usr/bin/env
# Autor: kalicx

clear

echo "------------------------------------------------------------"
echo "|          Skripta za preuzimanje Youtube fajlova          |"
echo "------------------------------------------------------------"
echo "|  Autor: kalicx                                           |"
echo "------------------------------------------------------------"
sleep 1
echo "|  Unesi broj linkova                                      |"
read broj
echo "------------------------------------------------------------"

while true
do
    read -a URL
    for (( i=0; i<$broj; i++ ))
    do
        clear
        echo "------------------------------------------------------------"
        echo "| Preuzimam fajl: ${URL[$i]} ...                          |"
        youtube-dl -x --audio-format mp3 ${URL[$i]}
        echo "------------------------------------------------------------"
done

for (( i=0; i<$broj; i++ ))
    do
        #clear
        echo " Preuzeli ste fajl: ${URL[$i]} "n
done
echo "------------------------------------------------------------"
echo "| Da li zelite da preuzmete jos jedan fajl? (d/n)          |"
read answer
if [ "$answer" != "${answer#[Dd]}" ] ;then
    ./youtube_test.sh
else
    break
fi
done
