#!/usr/bin/env bash
set -ouex pipefail

# install packages
rpm-ostree install -y \
  dash \
  cronie \
  polkit-gnome \
  kitty \
  grimshot \
  mako \
  slurp \
  wofi \
  sddm \
  qt5ct \
  thunar \
  eom \
  mpv  \
  youtube-dl \
  ffmpeg \
  mpd \
  swaybg \
  swaylock \
  swayidle \
  wtype \
  wlogout \
  wlr-randr \
  wlsunset \
  xorg-x11-server-Xwayland \
  gamescope \
  clipman \
  qt5-qtwayland \
  wireplumber \
  pipewire-gstreamer \
  pipewire-pulseaudio \
  pipewire-alsa \
  pipewire-plugin-jack \
  pipewire-plugin-libcamera 

  
rpm-ostree install -y \
  xdg-desktop-portal-hyprland \
  waybar-hyprland \
  hyprland

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
printf 'alias /usr/bin/sh /usr/bin/dash' | tee -a /etc/profile
printf 'alias /bin/sh /usr/bin/dash' | tee -a /etc/profile
printf 'alias sh /usr/bin/dash' | tee -a /etc/profile
printf 'export SDL_VIDEODRIVER=wayland\n' | tee -a /etc/profile
printf 'export _JAVA_AWT_WM_NONREPARENTING=1\n' | tee -a /etc/profile
printf 'export QT_QPA_PLATFORM=wayland\n' | tee -a /etc/profile
printf 'export XDG_CURRENT_DESKTOP=sway\n' | tee -a /etc/profile
printf 'export XDG_SESSION_DESKTOP=sway\n' | tee -a /etc/profile
printf 'export GDK_BACKEND="wayland,x11"\n' | tee -a /etc/profile
printf 'export MOZ_ENABLE_WAYLAND=1\n' | tee -a /etc/profile
printf 'export QT_QPA_PLATFORMTHEME=qt5ct\n' | tee -a /etc/profile
