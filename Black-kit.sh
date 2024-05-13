#!/bin/bash

k="\033[0;31m"
y="\033[0;32m"
b="\033[0;34m"
m="\033[0;35m"
c="\033[1;36m"
s="\033[0;33m"
r="\033[0m"

clear

#!/bin/bash

paketyukle() {
  echo -e $k">"$r" yüklenen paket: "$y"termux-api"$r
  sleep 10
  pkg install termux-api
  termux-setup-storage > /dev/null 2>&1 &
  termux-toast -b red -c yellow "Termux API yüklendi."
  sleep 2
}

animate_progress() {
  local width=20
  local progress=$1
  local filled=$((progress * width / 100))
  local empty=$((width - filled))
  local bar=$(printf "%${filled}s")
  local space=$(printf "%${empty}s")
  local color=$2
  echo -ne "\rLütfen bekleyin...[\e[32m${bar// /#}\e[0m\e[37m${space// / }\e[0m] ${progress}%"
}

paketyukle

clear

read -p "Black-kit başlatılsın mı? (E/H): " choice

if [[ "$choice" == "E" || "$choice" == "e" ]]; then
  echo "Black-kit başlatılıyor..."
elif [[ "$choice" == "H" || "$choice" == "h" ]]; then
  echo "İptal edildi."
  exit 0
else
  echo "Geçersiz seçenek: $choice"
  exit 1
fi

clear

animate_progress 50 "b"

clear

echo -e "\e[1mİşlem başlatılıyor...\e[0m"
sleep 0.6
clear

for ((i = 0; i <= 100; i += 5)); do
  animate_progress $i
  sleep 0.1
done

echo -e "\n\e[1mİşlem tamamlandı.\e[0m"
sleep 0.6
clear

while true; do
  banner=$(cat << "EOF"
███████████████████████████
███████▀▀▀░░░░░░░▀▀▀███████
████▀░░░░░░░░░░░░░░░░░▀████
███│░░░░░░░░░░░░░░░░░░░│███
██▌│░░░░░░░░░░░░░░░░░░░│▐██
██░└┐░░░░░░░░░░░░░░░░░┌┘░██
██░░└┐░░░░░░░░░░░░░░░┌┘░░██
██░░┌┘▄▄▄▄▄░░░░░▄▄▄▄▄└┐░░██
██▌░│██████▌░░░▐██████│░▐██
███░│▐███▀▀░░▄░░▀▀███▌│░███
██▀─┘░░░░░░░▐█▌░░░░░░░└─▀██
██▄░░░▄▄▄▓░░▀█▀░░▓▄▄▄░░░▄██
████▄─┘██▌░░░░░░░▐██└─▄████
█████░░▐█─┬┬┬┬┬┬┬─█▌░░█████
████▌░░░▀┬┼┼┼┼┼┼┼┬▀░░░▐████
█████▄░░░└┴┴┴┴┴┴┴┘░░░▄█████
███████▄░░░░░░░░░░░▄███████
██████████▄▄▄▄▄▄▄██████████
███████████████████████████

        ███                  █                      █
 █████░   █                  █             █   ▒▓          █
 █   ▒█   █                  █             █  ▒█           █
 █    █   █    ░███░   ▓██▒  █  ▒█         █ ▒█   ███    █████
 █   ▒█   █    █▒ ▒█  ▓█  ▓  █ ▒█          █▒█      █      █
 █████░   █        █  █░     █▒█           ███░     █      █
 █   ▒█   █    ▒████  █      ██▓           █ ▒█     █      █
 █    █   █    █▒  █  █░     █░█░          █  █▓    █      █
 █   ▒█   █░   █░ ▓█  ▓█  ▓  █ ░█          █   █░   █      █░
 █████░   ▒██  ▒██▒█   ▓██▒  █  ▒█         █   ▒█ █████    ▒██
\e[31m•\e[33mInstagram\e[31m•\e[37mcoderfenrir
\e[31m•\e[33mGithub\e[31m•\e[37mcoderfenrir
\e[31m•\e[33mversion\e[31m•\e[37m1.0
EOF

echo
echo -e "\e[31m(\e[32m01\e[31m)\e[36m" Cupp
echo -e "\e[31m(\e[32m02\e[31m)\e[36m" Instagram-Brute
echo -e "\e[31m(\e[32m03\e[31m)\e[36m" Ip-Tracer
echo -e "\e[31m(\e[32m04\e[31m)\e[36m" Nikto
echo -e "\e[31m(\e[32m05\e[31m)\e[36m" Sqlmap
echo -e "\e[31m(\e[32m06\e[31m)\e[36m" Phoneİnfoga
echo -e "\e[31m(\e[32m07\e[31m)\e[36m" ParrotShell
echo -e "\e[31m(\e[32m08\e[31m)\e[36m" GalleryHack
echo -e "\e[31m(\e[32m09\e[31m)\e[36m" WhatsApp Spam
echo -e "\e[31m(\e[32m10\e[31m)\e[36m" FTP Brute
echo -e "\e[31m(\e[32mh\e[31m)\e[36m" Yardım
echo -e "\e[31m(\e[32m99\e[31m)\e[36m" Exit
echo
)

echo -e "\e[1;32m$banner\e[0m"

read -p $'\e[31m[\e[32m=>\e[31m]\e[37m İşlem Numarası : ' islem_numarasi

case $islem_numarasi in
  01)
    cd $HOME
    git clone https://github.com/Mebus/cupp
    sleep 2
    termux-notification -t "Tool kullanıma hazır"
    clear
    ;;
  02)
    cd $HOME
    git clone https://github.com/keralahacker/Ig-brute
    sleep 2
    termux-notification -t "Tool kullanıma hazır"
    clear
    ;;
  03)
    cd $HOME
    git clone https://github.com/rajkumardusad/IP-Tracer.git
    sleep 2
    termux-notification -t "Tool kullanıma hazır"
    clear
    ;;
  04)
    cd $HOME
    git clone https://github.com/sullo/nikto
    sleep 2
    termux-notification -t "Tool kullanıma hazır"
    clear
    ;;
  05)
    cd $HOME
    git clone https://github.com/sqlmapproject/sqlmap.git
sleep 2
    termux-notification -t "Tool kullanıma hazır"
    clear
    ;;
  06)
    cd $HOME
    git clone https://github.com/abhinavkavuri/PhoneInfoga
    sleep 2
    termux-notification -t "Tool kullanıma hazır"
    clear
    ;;
  07)
    cd $HOME
    git clone https://github.com/termuxprofessor/parrotshell
    sleep 2
    termux-notification -t "Tool kullanıma hazır"
    clear
    ;;
  08)
    cd $HOME
    git clone https://github.com/RazorKenway/GalleryHack
    sleep 2
    termux-notification -t "Tool kullanıma hazır"
    clear
    ;;
  09)
    cd $HOME
    git clone https://github.com/RazorKenway/WhatsappSPAM
    sleep 2
    termux-notification -t "Tool kullanıma hazır"
    clear
    ;;
  10)
    cd $HOME
    git clone https://github.com/WalderlanSena/ftpbrute
    sleep 2
    termux-notification -t "Tool kullanıma hazır"
    clear
    ;;
  h)
    echo "Yardım menüsü."
    sleep 0.4
    echo "Cupp: Parola kaba kuvveti saldırıları için tasarlanmış bir araçtır."
    echo "Instagram-Brute: Instagram hesaplarına şifre kaba kuvvet saldırısı yapmak için kullanılır."
    echo "Ip-Tracer: Verilen bir IP adresinin coğrafi konumunu, sahibini ve diğer ayrıntıları belirlemek için kullanılır."
    echo "Nikto: Web sunucularının güvenlik açıklarını tespit etmek için kullanılır."
    echo "Sqlmap: SQL enjeksiyon açıklarını tespit etmek ve sömürmek için kullanılır."
    echo "PhoneInfoga: Telefon numaraları hakkında bilgi toplamak için kullanılır."
    echo "ParrotShell: Birden fazla kabuk oturumu oluşturmak için kullanılır."
    echo "GalleryHack: Bir web sitesindeki görüntü galerilerini indirmek için kullanılır."
    echo "WhatsApp Spam: Belirtilen bir numaraya spam mesajları göndermek için kullanılır."
    echo "FTP Brute: Bir FTP sunucusuna şifre kaba kuvvet saldırısı gerçekleştirir."
    read -p "Devam etmek için ENTER tuşuna basın."
    clear
    ;;
    99)
    echo "Black-Kit'ten çıkıs yapılıyor..."
    sleep 0.4
    exit 0
    ;;
    *)
      echo "Geçersiz seçim: $islem_numarasi"
      read -p "Devam etmek için ENTER tuşuna basın."
      clear
      ;;
  esac
done
