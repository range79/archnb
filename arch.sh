#!/bin/bash


sh configuration/logo.sh

echo "Scripti başlatmak ister misiniz? (E/H)"
read -r Soz
if [ "$Soz" = "E" ] || [ "$Soz" = "e" ]; then
    echo "Script başlıyor"
    
    
    elif [ "$Soz" = "H" ] || [ "$Soz" = "h" ]; then
    echo "Script başlamadı"
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
sh configuration/check_distro_name.sh

#read sudo password
echo "Sudo şifrenizi girin:"
read -s SUDO_PASSWORD


#check sudo password
echo "$SUDO_PASSWORD" | sudo -S true 2>/dev/null
if [ $? -ne 0 ]; then
    echo "Geçersiz şifre!"
    exit 1
fi
echo "$SUDO_PASSWORD" | sudo -S pacman -S flatpak -noconfirm
echo "$SUDO_PASSWORD" | sudo -S pacman -S fzf --noconfirm

#install yay pacakge manager
sh configuration/yay_installer.sh
sleep 3

#selection menu
if [ "$NAME" = "Arch Linux" ]; then
    SELECTION=$(echo -e "Anydesk\nWhatsapp\nDiscord\nVesktop\nVscode\nSteam" | fzf --multi --prompt="Arch'inize ne yüklemek istersiniz? Bir veya daha fazla işlem seçin (Tab tuşuyla seçim yapılıyor): ")
    
    for OPTION in $SELECTION; do
        case $OPTION in
            "Anydesk")
                echo "Anydesk kurulumu başlayacak..."
                flatpak install anydesk -y || { echo "Anydesk kurulumu başarısız!"; exit 1; }
            ;;
            "Whatsapp")
                echo "Whatsapp kurulumu başlayacak..."
                flatpak install flathub com.github.eneshecan.WhatsAppForLinux -y || { echo "Whatsapp kurulumu başarısız!"; exit 1; }
            ;;
            
            "Discord")
                echo "Discord kurulumu başlayacak..."
                echo "$SUDO_PASSWORD" | sudo -S pacman -S discord --noconfirm
            ;;
            
            
            "Vesktop")
                echo "Vesktop indirmesi basliyor"
                yay -S vesktop --noconfirm || { echo "Vesktop kurulumu başarısız!"; sleep 2; }
            ;;
            
            "Vscode")
                echo "Visual Studio Code indirmesi baslatiliyor"
                yay -S  visual-studio-code-bin --noconfirm || { echo "Vscode kurulumu başarısız!"; sleep 2; }
            ;;
            
            "JetbrainsTb")
                echo "Jetbrains toolbox kurulumu basliyor"
                yay -S  jetbrains-toolbox --nofonfirm || { echo "Jetbrains kurulumu başarısız!"; sleep 2; }
            ;;
            "Steam")
               echo "Steam kurulumu başlıyor"
               yay -S steam --noconfirm || {echo "steam kurulumu başarısız"; sleep 2 ;}
            
            *)
                echo "Geçersiz seçim: $OPTION"
            ;;
        esac
    done
    
    echo "İşlem tamamlandı."
else
    echo "Sisteminiz Arch değil."
fi
