#!/usr/bin/env bash

#variable

yt="youtube-dl -x --audio-format"
r="-o %(title)s.%(ext)s"
path="$HOME/youtube-dl/"


trap ctrl_c INT
ctrl_c() {
clear
echo -e "(Ctrl + C) Detected, Trying To Exit ..."
sleep 1
echo ""
echo -e "Thank You"
echo ""
echo -e "AKU WIBU DAN AKU BANGGA"
echo ""
echo -e "Buset ngaku"
exit
}

echo "Cek folder"
cd $HOME/youtube-dl/ > /dev/null 2>&1
  if [ "$?" -eq "0" ]
  
then

    echo [✔]-[Folder]: MANTAP!;
    
else
   
   echo [x]-[folder]: Bikin duls!;
   mkdir youtube-dl
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
echo "youtube-dl"
which youtube-dl > /dev/null 2>&1
      if [ "$?" -eq "0" ]; 

then

      echo [✔]-[youtube-dl]: MANTAP!;

else

   echo [x]-[warning]: butuh Youtube-dl gan!!!;
   echo ""
   echo [!]-[bentar]: Tungguin;
   apt update
   apt install youtube-dl
   echo ""
   sleep 2
fi
sleep 2
clear

echo " Download Lagu dari Youtube ";
echo " by : Muhammad Saddam Khadafi";
echo ""
echo -ne " link : ";
read link
echo
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
