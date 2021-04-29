#!/usr/bin/env bash

#variable

yt="youtube-dl -x --audio-format"
r="-o %(title)s.%(ext)s"
path="/data/data/com.termux/files/home/storage/shared/youtube-dl/"


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

echo "Cek Storage"
cd /data/data/com.termux/files/home/storage/ > /dev/null 2>&1
  if [ "$?" -eq "0" ]
  
then

    echo [✔]-[storage]: MANTAP!;
    
else

   echo [x]-[storage]: Kasih akses duls!;
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
   
   echo [x]-[folder]: Bikin duls!;
   echo ""
   mkdir /data/data/com.termux/files/home/storage/shared/youtube-dl
   echo ""
   sleep 2
fi

echo ""
echo "Tes internet"
ping -c 1 google.com > /dev/null 2>&1
  if [ "$?" != 0 ];

then

    echo [x]-[warning]: Nyambung inet duls gan!!!;
    sleep 2
    exit
    
else

    echo [✔]-[Internet Connection]: MANTAP!;
    sleep 2
fi

echo ""
echo "python"
which python > /dev/null 2>&1
      if [ "$?" -eq "0" ]; 

then

      echo [✔]-[Python]: MANTAP!;

else

   echo [x]-[warning]: butuh Python gan;
   echo ""
   echo [!]-[bentar]: Tungguin .... ;
   pkg update
   pkg install python -y
   echo ""
   sleep 2
fi
sleep 2

echo ""
echo "ffmpeg"
which ffmpeg > /dev/null 2>&1
      if [ "$?" -eq "0" ]; 

then

      echo [✔]-[ffmpeg]: MANTAP!;

else

   echo [x]-[warning]: butuh ffmpeg gan;
   echo ""
   echo [!]-[bentar]: Tungguin .... ;
   pkg install ffmpeg -y
   echo ""
   sleep 2
fi
sleep 2

echo ""
echo "youtube-dl"
which youtube-dl > /dev/null 2>&1
      if [ "$?" -eq "0" ]; 

then

      echo [✔]-[youtube-dl]: MANTAP!;

else

   echo [x]-[warning]: butuh Youtube-dl gan;
   echo ""
   echo [!]-[bentar]: Tungguin .... ;
   pip install youtube-dl
   echo ""
   sleep 2
fi
sleep 2
clear

echo " Download Lagu dari Youtube ";
echo " by : Muhammad Saddam Khadafi";
echo ""
read -p "Enter link : " link
echo ""
echo " Mau pakai format lagu apa? : ";
echo
echo " 1) Mp3 "
echo " 2) Opus "
echo " 3) M4a "
echo " 4) Vorbis (Ogg) "
echo " 5) Wav "
echo " 6) Flac "
echo
read -p "pilih : " format
echo

case $format in

1)
	$yt mp3 $link $r 
	mv *.mp3 $path
	clear
	echo " Done "
;;

2)
	$yt opus $link $r
	mv *.opus $path
	clear
	echo " Done "
;;

3)
	$yt m4a $link $r
	mv *.m4a $path
	clear
	echo " Done "
;;

4)
	$yt vorbis $link $r
	mv *.ogg $path
	clear
	echo " Done "
;;

5)
	$yt wav $link $r
	mv *.wav $path
	clear
	echo " Done "
;;

6)
	$yt flac $link $r
	mv *.flac $path
	clear
	echo " Done "
;;


esac
