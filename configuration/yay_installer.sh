echo "Yay Paket Yöneticisi kurulumu başlayacak..."
cd /home/$USER || { echo "Kullanıcı dizinine geçiş başarısız!"; exit 1; }
if [ -d yay ]; then
    echo "yay dizini zaten var, siliniyor..."
echo "$SUDO_PASSWORD" |    rm -rf yay
fi
git clone https://aur.archlinux.org/yay.git || { echo "yay klonlanamadı!"; exit 1; }
cd yay || { echo "Yay dizinine geçiş başarısız!"; exit 1; }
echo "$SUDO_PASSWORD" | makepkg -si --noconfirm
