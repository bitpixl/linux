#!/bin/bash

if [[ `id -u` != 0 ]]; then
    echo "This script must be run as root."
    exit
fi

# update system files before installing desktop enviroment
# dnf update -y

# install minimal kde plasma desktop
dnf install -y xorg-x11-utils xdg-user-dirs plasma-desktop sddm sddm-kcm sddm-breeze breeze-gtk kde-gtk-config kde-settings-pulseaudio kde-style-breeze ksysguard plasma-breeze plasma-drkonqi plasma-nm plasma-nm-openvpn plasma-pa plasma-user-manager
# dnf install -y plasma-desktop sddm bluedevil breeze-gtk breeze-icon-theme cups-pk-helper gnome-keyring-pam kcm_systemd kde-gtk-config 
# dnf install -y kde-partitionmanager kde-print-manager kde-settings-pulseaudio kde-style-breeze kdegraphics-thumbnailers kdeplasma-addons 
# dnf install -y kdialog kdnssd khotkeys kinfocenter kmenuedit kscreen kscreenlocker ksshaskpass ksysguard kwallet-pam kwalletmanager5 kwin 
# dnf install -y pam-kwallet pinentry-qt plasma-breeze plasma-desktop-doc plasma-drkonqi plasma-nm plasma-nm-openvpn plasma-pa plasma-user-manager 
# dnf install -y polkit-kde sddm-breeze sddm-kcm setroubleshoot sni-qt xorg-x11-drv-libinput

# @"base-x" \
# @"Common NetworkManager Submodules" \
# @"Fonts" \
# @"Hardware Support" \

# plasma-workspace \
# plasma-workspace-geolocation \
# qt5-qtbase-gui \
# qt5-qtdeclarative \

# install mandatory apps for kde plasma
dnf install -y dolphin ark firewall-config flameshot gwenview kcalc kcharselect kmousetool konsole5 kwrite nano okular kget

# flatpak

# kde discover
dnf install -y plasma-pk-updates plasma-discover
# plasma-discover-backend-flatpak

# Enable SDDM
systemctl enable sddm
systemctl set-default graphical.target
