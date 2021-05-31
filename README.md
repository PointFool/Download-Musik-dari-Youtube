# Download musik dari video Youtube

Ini untuk perangkat android, gunakan aplikasi termux yang ada di playstore untuk menjalankannya.

Buka termux lalu install git

    pkg update

    pkg install git

Setelah itu download scriptnya 

    git clone https://github.com/PointFool/Download-Musik-dari-Youtube-Termux.git
    
    cd Download-Musik-dari-Youtube-Termux/
    
Pindahkan File yt.sh

    mv yt.sh /data/data/com.termux/files/usr/bin/yt
    
    chmod +x /data/data/com.termux/files/usr/bin/yt

jalankan scriptnya

    yt
