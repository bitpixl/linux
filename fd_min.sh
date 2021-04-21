#!/usr/bin/env bash

#install basic plasma desktop (run as su)
#update system
dnf update -y \

#core packages
#@"Package Name" contain many packages (group)
@base-x \
@"Common NetworkManager Submodules" \
@Fonts \
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
#plasma-workspace \
#plasma-workspace-geolocation \
polkit-kde \
#qt5-qtbase-gui \
#qt5-qtdeclarative \
sddm \
sddm-breeze \
sddm-kcm \
sddm-theme-breeze \
setroubleshoot \
sni-qt \
xorg-x11-drv-libinput \

#apps
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
kget \

#flatpak


#Plasma-Discover
plasma-pk-updates  \
plasma-discover
#plasma-discover-backend-flatpak \
/

#Enable SDDM
systemctl enable sddm
systemctl set-default graphical.target
