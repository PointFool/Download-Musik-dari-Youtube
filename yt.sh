#!/bin/bash

#variable

yt="youtube-dl -x --audio-format"
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

#Mengecek :'v

clear
echo "Cek Storage"
cd /data/data/com.termux/files/home/storage/ > /dev/null 2>&1
  if [ "$?" -eq "0" ]
  
then

    echo [✔]-[storage]: MANTAP!;
    
else

   echo [x]-[WADOOO]: Kasih akses duls!;
   echo ""
   termux-setup-storage
   echo ""
   sleep 2
fi

echo ""
echo "Cek folder"
cd /data/data/com.termux/files/home/storage/shared/youtube-dl/ > /dev/null 2>&1
  if [ "$?" -eq "0" ]
  
then

    echo [✔]-[Folder]: MANTAP!;
    
else
   
   echo [x]-[WADOOO]: Bikin duls!;
   echo ""
   mkdir /data/data/com.termux/files/home/storage/shared/youtube-dl
   echo ""
   sleep 1
fi

echo ""
echo "Tes internet"
ping -c 1 google.com > /dev/null 2>&1
  if [ "$?" != 0 ];

then

    echo [x]-[WADOOO]: Nyambung inet duls gan!!!;
    sleep 1
    exit
    
else

    echo [✔]-[Internet]: MANTAP!;
    sleep 1
fi

echo ""
echo "python"
which python > /dev/null 2>&1
      if [ "$?" -eq "0" ]; 

then

      echo [✔]-[Python]: MANTAP!;

else

   echo [x]-[WADOOO]: butuh Python gan;
   echo ""
   echo [!]-[bentar]: Tungguin .... ;
   apt update
   apt install python
   echo ""
   sleep 1
fi
sleep 2

echo ""
echo "ffmpeg"
which ffmpeg > /dev/null 2>&1
      if [ "$?" -eq "0" ]; 

then

      echo [✔]-[ffmpeg]: MANTAP!;

else

   echo [x]-[WADOOO]: butuh ffmpeg gan;
   echo ""
   echo [!]-[bentar]: Tungguin .... ;
   apt install ffmpeg
   echo ""
   sleep 1
fi
sleep 2

echo ""
echo "youtube-dl"
which youtube-dl > /dev/null 2>&1
      if [ "$?" -eq "0" ]; 

then

      echo [✔]-[youtube-dl]: MANTAP!;

else

   echo [x]-[WADOOO]: butuh Youtube-dl gan;
   echo ""
   echo [!]-[bentar]: Tungguin .... ;
   pip install youtube-dl
   echo ""
   sleep 1
fi
sleep 2
clear

echo " ========================== ";
echo " Download Lagu dari Youtube ";
echo "      by : PointFool";
echo " ========================== ";
echo ""
read -p "Link -> " link
clear

echo " Mau pakai format lagu apa? : ";
echo ""
echo " 1) Mp3 "
echo " 2) Opus "
echo " 3) M4a "
echo " 4) Vorbis (Ogg) "
echo " 5) Wav "
echo " 6) Flac "
echo ""
read -p "Pilih -> " format
echo

case $format in

1)
	$yt mp3 $link $r 
	mv *.mp3 $path
	clear
	echo " Done "
	sleep 1
;;

2)
	$yt opus $link $r
	mv *.opus $path
	clear
	echo " Done "
	sleep 1
;;

3)
	$yt m4a $link $r
	mv *.m4a $path
	clear
	echo " Done "
	sleep 1
;;

4)
	$yt vorbis $link $r
	mv *.ogg $path
	clear
	echo " Done "
	sleep 1
;;

5)
	$yt wav $link $r
	mv *.wav $path
	clear
	echo " Done "
	sleep 1
;;

6)
	$yt flac $link $r
	mv *.flac $path
	clear
	echo " Done "
	sleep 1
;;

*)
	echo "Salah input gan :D"
	sleep 2
;;

esac
