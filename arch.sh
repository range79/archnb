#!/bin/bash


RED='\033[31m'
RESET='\033[0m'


echo -e "
_________________________________
|                               | 
|                               |
|                               | 
|         arch linuxa yeni      | 
|         basliyanlar icin      |
|             script            | 
|                               | 
|           version 1.0         | 
|       github:${RED} @range79 ${RESET}       |
|       telegram: ${RED}@Onlyrange ${RESET}   |
|                               |
|                               |
|_______________________________|
"

echo "scripti baslatmak istermisiniz(E/H)"
read soz
if[ "$soz" = "E"|"e" ]; then
if [ "$soz" = "E" ] || [ "$soz" = "e" ]; then
    echo "Script başlıyor"
elif [ "$soz" = "H" ] || [ "$soz" = "h" ]; then
    echo "Script başlamadı"
    sleep 2
    exit 1
else
    echo "Yanlış girdiniz"
    sleep 2
    exit 1
fi




sleep 1

for n in {3..1}
do
echo "$n"
sleep 1
done
clear
if [ -f /etc/os-release ]; then

    . /etc/os-release
    DISTRO_NAME="$NAME"
    fi

echo "Sudo şifrenizi girin:"
read -s SUDO_PASSWORD

echo "$SUDO_PASSWORD" | sudo -S true 2>/dev/null
if [ $? -ne 0 ]; then
    echo "Geçersiz şifre!"
    exit 1
fi
 echo "$SUDO_PASSWORD" | sudo pacman -S fzf -y


if [ "$NAME" = "Arch Linux" ] ;then






SELECTION=$(echo -e "Yay Paket Yöneticisi\nAnydesk\nWhatsapp\nDiscord\n" | fzf --multi --prompt="Archiniza ne yuklemek istersiniz.bir veya daha fazla işlem seçin(tab tusuyla secim yapiliyor): ")


for OPTION in $SELECTION; do
    case $OPTION in
  
        "Yay Paket Yöneticisi")
            echo "Yay Paket Yöneticisi kurulumu başlayacak..."
            echo "$SUDO_PASSWORD" | sudo -S git clone https://aur.archlinux.org/yay.git
            cd yay || exit
            makepkg -si
            cd ..
            ;;
        "Anydesk")
            echo "Anydesk kurulumu başlayacak..."
          flatpak install anydesk -y
           makepkg -si
            ;;
        
        
        "Whatsapp")
        echo "whatsapp kurulumu baslayacak"
        flatpak install flathub com.github.eneshecan.WhatsAppForLinux -y
        echo "1" 
     
        ;;
        
        
        *)
            echo "Geçersiz seçim: $OPTION"
            ;;
    esac
done

echo "İşlem tamamlandı."

else 
echo "sisteminiz Arch deil"
fi