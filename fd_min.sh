#install basic plasma desktop (run as su)

#update system
dnf update -y &&

#core packages
#@"Package Name" contain many packages (group)
dnf install -y @base-x &&
dnf install -y @"Common NetworkManager Submodules" &&
dnf install -y @Fonts &&
dnf install -y @"Hardware Support" &&
dnf install -y bluedevil &&
dnf install -y breeze-gtk &&
dnf install -y breeze-icon-theme &&
dnf install -y cups-pk-helper &&
dnf install -y dolphin &&
dnf install -y gnome-keyring-pam &&
dnf install -y kcm_systemd &&
dnf install -y kde-gtk-config &&
dnf install -y kde-partitionmanager &&
dnf install -y kde-print-manager &&
dnf install -y kde-settings-pulseaudio &&
dnf install -y kde-style-breeze &&
dnf install -y kdegraphics-thumbnailers &&
dnf install -y kdeplasma-addons &&
dnf install -y kdialog &&
dnf install -y kdnssd &&
dnf install -y khotkeys &&
dnf install -y kinfocenter &&
dnf install -y kmenuedit &&
dnf install -y kscreen &&
dnf install -y kscreenlocker &&
dnf install -y ksshaskpass &&
dnf install -y ksysguard &&
dnf install -y kwallet-pam &&
dnf install -y kwalletmanager5 &&
dnf install -y kwin &&
dnf install -y pam-kwallet &&
dnf install -y pinentry-qt &&
dnf install -y plasma-breeze &&
dnf install -y plasma-desktop &&
dnf install -y plasma-desktop-doc &&
dnf install -y plasma-drkonqi &&
dnf install -y plasma-nm &&
dnf install -y plasma-nm-openvpn &&
dnf install -y plasma-pa &&
dnf install -y plasma-user-manager &&
#dnf install -y plasma-workspace &&
#dnf install -y plasma-workspace-geolocation &&
dnf install -y polkit-kde &&
#dnf install -y qt5-qtbase-gui &&
#dnf install -y qt5-qtdeclarative &&
dnf install -y sddm &&
dnf install -y sddm-breeze &&
dnf install -y sddm-kcm &&
dnf install -y sddm-theme-breeze &&
dnf install -y setroubleshoot &&
dnf install -y sni-qt &&
dnf install -y xorg-x11-drv-libinput &&

#apps
dnf install -y ark &&
dnf install -y firewall-config &&
dnf install -y flameshot &&
dnf install -y gwenview &&
dnf install -y kcalc &&
dnf install -y kcharselect &&
dnf install -y kmousetool &&
dnf install -y konsole5 &&
dnf install -y kwrite &&
dnf install -y nano &&
dnf install -y okular &&
dnf install -y kget &&

#flatpak


#Plasma-Discover
dnf install -y plasma-pk-updates  &&
dnf install -y plasma-discover &&
#dnf install -y plasma-discover-backend-flatpak &&

#Enable SDDM
systemctl enable sddm &&
systemctl set-default graphical.target
