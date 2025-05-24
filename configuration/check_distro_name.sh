#check os name
if [ -f /etc/os-release ]; then
    . /etc/os-release
    DISTRO_NAME="$NAME"
fi
if [ "$NAME" != "Arch Linux" ]; then
    echo "Yalnış linux dagıtımı"
fi