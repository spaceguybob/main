#!/usr/bin/env bash
set -ouex pipefail

#FEDORA_MAJOR_VERSION="${FEDORA_MAJOR_VERSION:-38}"

#RELEASE="$(rpm -E %fedora)"
ARCH="${ARCH:-x86_64}"

curl https://copr.fedorainfracloud.org/coprs/solopasha/hyprland/repo/fedora-38/solopasha-hyprland-fedora-38.repo | tee /etc/yum.repos.d/copr-solopasha-hyprland.repo

# install packages
rpm-ostree install -y  \
    xorg-x11-server-Xwayland \
    gamescope \
    xdg-desktop-portal \
    polkit-gnome \
    mako \ 
    python3 \
    python3-pip \
    waybar \ 
    kitty \
    wlsunset \ 
    swaylock \
    swayidle \
    swaybg \
    wofi \
    sddm \
    hyprland
    

# fedora oci
printf "adding fedora oci to flatpak if it does not exists\n"
flatpak remote-add --if-not-exists fedora oci+https://registry.fedoraproject.org
  
# flathub main
printf "adding flathub to flatpak if it does not exists\n"
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
  
# flathub-beta
printf "adding flathub beta to flatpak if it does not exists\n"
flatpak remote-add --if-not-exists flathub-beta https://flathub.org/beta-repo/flathub-beta.flatpakrepo

# kdeapps 
printf "adding kdeapps to flatpak if it does not exists\n"
flatpak remote-add --if-not-exists kdeapps --from https://distribute.kde.org/kdeapps.flatpakrepo

# gnome-nightly
printf "adding gnome-nightly to flatpak if it does not exists\n"
flatpak remote-add --if-not-exists gnome-nightly https://nightly.gnome.org/gnome-nightly.flatpakrepo

# elemenetoryos-appcenter
printf "adding elemenetoryos-appcenter to flatpak if it does not exists\n"
flatpak remote-add --if-not-exists elemenetoryos-appcenter https://flatpak.elementary.io/repo.flatpakrepo
    
# update appstream
printf "updating flatpak appstream\n"
flatpak update --appstream

# set profile
printf 'export SDL_VIDEODRIVER=wayland\n' | tee -a /etc/profile
printf 'export _JAVA_AWT_WM_NONREPARENTING=1\n' | tee -a /etc/profile
printf 'export QT_QPA_PLATFORM=wayland\n' | tee -a /etc/profile
printf 'export XDG_CURRENT_DESKTOP=sway\n' | tee -a /etc/profile
printf 'export XDG_SESSION_DESKTOP=sway\n' | tee -a /etc/profile
printf 'export GDK_BACKEND="wayland,x11"\n' | tee -a /etc/profile
printf 'export MOZ_ENABLE_WAYLAND=1\n' | tee -a /etc/profile
