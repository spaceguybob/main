#!/usr/bin/env bash
set -ouex pipefail

rpm-ostree update

# install packages
# misc
rpm-ostree install -y cronie
rpm-ostree install -y polkit-gnome
rpm-ostree install -y kitty
rpm-ostree install -y grimshot
rpm-ostree install -y mako
rpm-ostree install -y slurp
rpm-ostree install -y wofi
rpm-ostree install -y sddm
rpm-ostree install -y qt5ct
rpm-ostree install -y thunar
rpm-ostree install -y eom

rpm-ostree install -y mpv youtube-dl ffmpeg
rpm-ostree install -y just


# sway tools
rpm-ostree install -y swaybg
rpm-ostree install -y swaylock
rpm-ostree install -y swayidle

# wayland tools
rpm-ostree install -y wtype
rpm-ostree install -y wlogout
rpm-ostree install -y wlr-randr
rpm-ostree install -y wlsunset
rpm-ostree install -y xorg-x11-server-Xwayland
rpm-ostree install -y gamescope
rpm-ostree install -y clipman

# hyprland
#rpm-ostree install -y xdg-desktop-portal
#rpm-ostree install -y waybar 
rpm-ostree install -y xdg-desktop-portal-hyprland
rpm-ostree install -y waybar-hyprland 
rpm-ostree install -y hyprland

# fedora
printf "adding fedora oci to flatpak if it does not exists\n"
flatpak remote-add --if-not-exists fedora oci+https://registry.fedoraproject.org

# fedora testing
printf "adding fedora oci testing to flatpak if it does not exists\n"
flatpak remote-add --if-not-exists fedora-testing oci+https://registry.fedoraproject.org#testing

# flathub main
printf "adding flathub to flatpak if it does not exists\n"
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
  
# flathub-beta
printf "adding flathub beta to flatpak if it does not exists\n"
flatpak remote-add --if-not-exists flathub-beta https://flathub.org/beta-repo/flathub-beta.flatpakrepo

# kdeapps 
printf "adding kdeapps to flatpak if it does not exists\n"
flatpak remote-add --if-not-exists kdeapps-nightly --from https://distribute.kde.org/kdeapps.flatpakrepo

# gnome-nightly
printf "adding gnome-nightly to flatpak if it does not exists\n"
flatpak remote-add --if-not-exists gnome-nightly https://nightly.gnome.org/gnome-nightly.flatpakrepo

# elemenetoryos-appcenter
printf "adding elemenetoryos-appcenter to flatpak if it does not exists\n"
flatpak remote-add --if-not-exists elemenetoryos-appcenter https://flatpak.elementary.io/repo.flatpakrepo

# endless-os
printf "adding endless os apps and sdk to flatpak if it does not exists\n"
wget -O /tmp/eos-flatpak-keyring.gpg https://origin.ostree.endlessm.com/keys/eos-flatpak-keyring.gpg
flatpak remote-add --if-not-exists --gpg-import=/tmp/eos-flatpak-keyring.gpg endlessos-sdk https://ostree.endlessm.com/ostree/eos-sdk
flatpak remote-add --if-not-exists --gpg-import=/tmp/eos-flatpak-keyring.gpg endlessos-apps https://ostree.endlessm.com/ostree/eos-apps

# set profile
#touch /etc/profile
#chmod 644 /etc/profile
printf 'export SDL_VIDEODRIVER=wayland\n' | tee -a /etc/profile
printf 'export _JAVA_AWT_WM_NONREPARENTING=1\n' | tee -a /etc/profile
printf 'export QT_QPA_PLATFORM=wayland\n' | tee -a /etc/profile
printf 'export XDG_CURRENT_DESKTOP=sway\n' | tee -a /etc/profile
printf 'export XDG_SESSION_DESKTOP=sway\n' | tee -a /etc/profile
printf 'export GDK_BACKEND="wayland,x11"\n' | tee -a /etc/profile
printf 'export MOZ_ENABLE_WAYLAND=1\n' | tee -a /etc/profile
printf 'export QT_QPA_PLATFORMTHEME=qt5ct\n' | tee -a /etc/profile
