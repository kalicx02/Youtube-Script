#! /bin/bash
#!/usr/bin/env
# Autor: kalicx

# Using Youtube-dlp

#yt-dlp -f 'ba' -x --audio-format flac <link>
#yt-dlp -f 'ba' -x --audio-format flac ytsearch:"<search>"

clear
echo "---------------  Youtube Music Downloader  ---------------"
echo "---------------       Autor:  kalicx       ---------------"
echo "----------------------------------------------------------"
echo "Select download option:"
echo "1. Download by link"
echo "2. Download by search"
echo "----------------------------------------------------------"
sleep 1
read -p "Select option [1] or [2]: " url
echo "----------------------------------------------------------"

if [ $url = 1 ]
then
    read -p "Enter the link: " url
    yt-dlp -f 'ba' -x --audio-format flac $url
elif [ $url = 2 ]
then
    read -p "Enter the name of song: " url
    yt-dlp -f 'ba' -x --audio-format flac ytsearch:"$url"
else
    echo "Invalid option!"
    echo "Programm will be restarted ..."
    echo "----------------------------------------------------------"
    sleep 3
    ./youtube-update.sh
    exit
fi

echo "----------------------------------------------------------"
echo "------------------  Download  complete  ------------------"
echo "----------------------------------------------------------"
