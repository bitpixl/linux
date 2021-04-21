#!/bin/bash

if [[ `id -u` != 0 ]]; then
    echo "This script must be run as root."
    exit
fi

# update system files before installing desktop enviroment
dnf update -y

# install minimal kde plasma desktop
dnf install -y \
@"base-x" \
@"Common NetworkManager Submodules" \
@"Fonts" \
@"Hardware Support" \
bluedevil \
breeze-gtk \
breeze-icon-theme \
cups-pk-helper \
dolphin \
gnome-keyring-pam \
kcm_systemd \
kde-gtk-config \
kde-partitionmanager \
kde-print-manager \
kde-settings-pulseaudio \
kde-style-breeze \
kdegraphics-thumbnailers \
kdeplasma-addons \
kdialog \
kdnssd \
khotkeys \
kinfocenter \
kmenuedit \
kscreen \
kscreenlocker \
ksshaskpass \
ksysguard \
kwallet-pam \
kwalletmanager5 \
kwin \
pam-kwallet \
pinentry-qt \
plasma-breeze \
plasma-desktop \
plasma-desktop-doc \
plasma-drkonqi \
plasma-nm \
plasma-nm-openvpn \
plasma-pa \
plasma-user-manager \
polkit-kde \
sddm \
sddm-breeze \
sddm-kcm \
sddm-theme-breeze \
setroubleshoot \
sni-qt \
xorg-x11-drv-libinput
# plasma-workspace \
# plasma-workspace-geolocation \
# qt5-qtbase-gui \
# qt5-qtdeclarative \

# install mandatory apps for kde plasma
dnf install -y \
ark \
firewall-config \
flameshot \
gwenview \
kcalc \
kcharselect \
kmousetool \
konsole5 \
kwrite \
nano \
okular \
kget

# flatpak

# kde discover
dnf install -y \
plasma-pk-updates  \
plasma-discover
# plasma-discover-backend-flatpak

# Enable SDDM
systemctl enable sddm
systemctl set-default graphical.target
