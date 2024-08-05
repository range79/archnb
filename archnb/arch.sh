#!/bin/bash



RED='\033[31m'
RESET='\033[0m'

echo -e "
_________________________________
|                               | 
|                               |
|                               | 
|         Arch Linux'a yeni     | 
|         başlayanlar için      |
|             script            | 
|                               | 
|           version 1.0.1       | 
|       github: ${RED}@range79${RESET}        |
|       telegram: ${RED}@Onlyrange${RESET}    |
|                               |
|                               |
|_______________________________|
"

echo "Scripti başlatmak ister misiniz? (E/H)"
read -r Soz
if [ "$Soz" = "E" ] || [ "$Soz" = "e" ]; then 
    echo "Script başlıyor"
   
    # alttan devam etsin
elif [ "$Soz" = "H" ] || [ "$Soz" = "h" ]; then 
    echo "Script başlamadı"
    sleep 2
    exit 1
else
    echo "Yanlış girdiniz"
    sleep 2
    exit 1
fi

sleep 1

for n in {3..1}; do
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
echo "$SUDO_PASSWORD" | sudo -S pacman -S fzf --noconfirm

echo "$SUDO_PASSWORD" | sudo -S true 2>/dev/null
if [ $? -ne 0 ]; then
    echo "Geçersiz şifre!"
    exit 1
fi

echo "$SUDO_PASSWORD" | sudo -S pacman -S fzf --noconfirm

if [ "$NAME" = "Arch Linux" ]; then
    SELECTION=$(echo -e "Yay\nAnydesk\nWhatsapp\nDiscord\n" | fzf --multi --prompt="Arch'inize ne yüklemek istersiniz? Bir veya daha fazla işlem seçin (Tab tuşuyla seçim yapılıyor): ")

    for OPTION in $SELECTION; do
        case $OPTION in
            "Yay")
                echo "Yay Paket Yöneticisi kurulumu başlayacak..."
                whoami = benim
            cd /home/${benim}
        
                echo "$SUDO_PASSWORD" | sudo -S git clone https://aur.archlinux.org/yay.git
         
          chmod u+rwx /home/yay


              cd yay || { echo "Yay dizinine geçiş başarısız!"; exit 1; }
              makepkg -si --noconfirm
            
                ;;
            "Anydesk")
                echo "Anydesk kurulumu başlayacak..."
                flatpak install anydesk -y
                ;;
            "Whatsapp")
                echo "Whatsapp kurulumu başlayacak..."
                flatpak install flathub com.github.eneshecan.WhatsAppForLinux -y
                ;;
            "Discord")
                echo "Discord kurulumu başlayacak..."
                echo "$SUDO_PASSWORD" | sudo -S pacman -S discord --noconfirm
                ;;
            *)
                echo "Geçersiz seçim: $OPTION"
                ;;
        esac
    done

    echo "İşlem tamamlandı."
else
    echo "Sisteminiz Arch değil."
fi
