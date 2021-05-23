#!/bin/bash

cc='mv yt /data/data/com.termux/files/usr/bin && chmod +x /data/data/com.termux/files/usr/bin/yt'

echo "install";
echo ""
echo "WAIT GAN";

clear
echo "Cek Storage"
cd /data/data/com.termux/files/home/storage/ > /dev/null 2>&1
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
echo "python"
which python > /dev/null 2>&1
    if [ "$?" -eq "0" ]; then
    echo "[✓]Python tersedia![✓]";

else

   echo "[+]Python tidak tersedia[+]";
   echo ""
   echo "[!]Tunggu[!]";
   apt update
   apt install python
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
    apt install ffmpeg -y
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
echo "mindahin file"
$cc
echo "Done";
sleep 2
