#!/bin/bash

#variable

yt="youtube-dl -q -x --audio-format"
r="-o %(title)s.%(ext)s"
path="/data/data/com.termux/files/home/storage/shared/youtube-dl/"

#ontong jail lu :'v

trap ctrl_c INT
ctrl_c() {
clear
echo "(Ctrl + C) Detected, Trying To Exit ..."
sleep 1
echo ""
echo "Thank You"
echo ""
echo "AKU WIBU DAN AKU BANGGA"
echo ""
echo "Buset ngaku"
exit
}

#cek mengecek

clear
echo "Cek Storage"
cd /data/data/com.termux/files/home/storage/
    if [ "$?" -eq "0" ]; then
        echo "[✓]Mantap![✓]";
else
    echo "[+]Kasih akses dulu![+]";
    echo ""
    termux-setup-storage
    echo ""
    sleep 5
fi

echo ""
echo "Cek Folder";
    if [ -d "/data/data/com.termux/files/home/storage/shared/youtube-dl" ]; then
        echo "[✓]Mantap![✓]";
else
    echo "[+]Folder tidak ada[+]";
    mkdir /data/data/com.termux/files/home/storage/shared/youtube-dl
    sleep 1
fi

echo ""
echo "python"
which python > /dev/null 2>&1
    if [ "$?" -eq "0" ]; then
    echo "[✓]Python tersedia![✓]";

else

   echo "[+]Python tidak tersedia[+]";
   echo ""
   echo "[!]Tunggu[!]";
   pkg update
   pkg install python -y
   echo ""
   sleep 2
fi

echo ""
echo "ffmpeg"
which ffmpeg > /dev/null 2>&1
    if [ "$?" -eq "0" ]; then
    echo "[✓]ffmpeg tersedia![✓]";

else

    echo "[+]ffmpeg tidak tersedia![+]";
    echo ""
    echo "[!]Tunggu[!]";
    pkg install ffmpeg -y
    echo ""
    sleep 2
fi

echo ""
echo "youtube-dl"
which youtube-dl > /dev/null 2>&1
      if [ "$?" -eq "0" ]; then
    echo "[✓]youtube-dltersedia![✓]";

else

    echo [x]-[WADOOO]: butuh Youtube-dl gan;
    echo ""
    echo [!]-[bentar]: Tungguin .... ;
    pip install youtube-dl
    echo ""
    sleep 1
fi
clear

echo "===================================";
echo "   Download Musik dari Youtube";
echo "         by : PointFool";
echo "===================================";
echo ""
read -p "Enter YouTube Link > " link
echo ""
clear

echo "Mau pakai format apa? : ";
echo ""
echo "1) mp3";
echo "2) opus";
echo "3) m4a";
echo "4) Vorbis (ogg)";
echo "5) wav";
echo "6) flac";
echo "7) Best audio quality";
echo ""
read -p "Pilih > " format

    if [ $format = 1 ]; then
    clear
    echo "============mp3============";
    $yt mp3 $link $r
    mv *.mp3 $path
    clear
    echo "done";
    read -p "Wanna Back To Main Menu [ Y / n ] : " check
if [ $check = "Y" ]; then
yt
elif [ $check = "y" ]; then
yt
else
exit 1
fi
elif [ $format = 2 ]; then
    clear
    echo "============opus============";
    $yt opus $link $r
    mv *.opus $path
    echo "done";
    read -p "Wanna Back To Main Menu [ Y / n ] : " check2
if [ $check2 = "Y" ]; then
yt
elif [ $check2 = "y" ]; then
yt
else
exit 1
fi
elif [ $format = 3 ]; then
    clear
    echo "============m4a============";
    $yt m4a $link $r
    mv *.m4a $path
    echo "done";
    read -p "Wanna Back To Main Menu [ Y / n ] : " check3
if [ $check3 = "Y" ]; then
yt
elif [ $check3 = "y" ]; then
yt
else
exit 1
fi
elif [ $format = 4 ]; then
    clear
    echo "============vorbis (ogg)============";
    $yt vorbis $link $r
    mv *.ogg $path
    echo "done";
    read -p "Wanna Back To Main Menu [ Y / n ] : " check4
if [ $check4 = "Y" ]; then
yt
elif [ $check4 = "y" ]; then
yt
else
exit 1
fi
elif [ $format = 5 ]; then
    clear
    echo "============wav============";
    $yt wav $link $r
    mv *.wav $path
    echo "done";
    read -p "Wanna Back To Main Menu [ Y / n ] : " check5
if [ $check5 = "Y" ]; then
yt
elif [ $check5 = "y" ]; then
yt
else
exit 1
fi
elif [ $format = 6 ]; then
    clear
    echo "============flac============";
    $yt flac $link $r
    mv *.flac $path
    echo "done";
    read -p "Wanna Back To Main Menu [ Y / n ] : " check6
if [ $check6 = "Y" ]; then
yt
elif [ $check6 = "y" ]; then
yt
else
exit 1
fi
elif [ $format = 7 ]; then
    clear
    echo "============BEST============";
    $yt best $link $r
    mv *.* $path
    echo "done";
    read -p "Wanna Back To Main Menu [ Y / n ] : " check6
if [ $check6 = "Y" ]; then
yt
elif [ $check6 = "y" ]; then
yt
else
exit 1
fi
fi
