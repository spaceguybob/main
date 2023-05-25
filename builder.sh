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
  pipewire-jack-audio-connection-kit \
  pipewire-plugin-libcamera \
  just \
  stow \
  git \
  pam-u2f \
  pamu2fcfg \
  fido2-tools \
  unrar
  
rpm-ostree install -y \
  xdg-desktop-portal-hyprland \
  waybar-hyprland \
  hyprland

wget -O /tmp/eos-flatpak-keyring.gpg https://origin.ostree.endlessm.com/keys/eos-flatpak-keyring.gpg

flatpak remote-add --if-not-exists fedora oci+https://registry.fedoraproject.org
flatpak remote-add --if-not-exists fedora-testing oci+https://registry.fedoraproject.org#testing
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak remote-add --if-not-exists flathub-beta https://flathub.org/beta-repo/flathub-beta.flatpakrepo
flatpak remote-add --if-not-exists kdeapps-nightly --from https://distribute.kde.org/kdeapps.flatpakrepo
flatpak remote-add --if-not-exists gnome-nightly https://nightly.gnome.org/gnome-nightly.flatpakrepo
flatpak remote-add --if-not-exists elemenetoryos-appcenter https://flatpak.elementary.io/repo.flatpakrepo
flatpak remote-add --if-not-exists --gpg-import=/tmp/eos-flatpak-keyring.gpg endlessos-sdk https://ostree.endlessm.com/ostree/eos-sdk
flatpak remote-add --if-not-exists --gpg-import=/tmp/eos-flatpak-keyring.gpg endlessos-apps https://ostree.endlessm.com/ostree/eos-apps

printf 'alias "docker"="/usr/bin/podman"\n' | tee -a /etc/profile
printf 'alias "sh"="/usr/bin/dash"\n' | tee -a /etc/profile
printf 'export SDL_VIDEODRIVER=wayland\n' | tee -a /etc/profile
printf 'export _JAVA_AWT_WM_NONREPARENTING=1\n' | tee -a /etc/profile
printf 'export QT_QPA_PLATFORM=wayland\n' | tee -a /etc/profile
printf 'export XDG_CURRENT_DESKTOP=sway\n' | tee -a /etc/profile
printf 'export XDG_SESSION_DESKTOP=sway\n' | tee -a /etc/profile
printf 'export GDK_BACKEND="wayland,x11"\n' | tee -a /etc/profile
printf 'export MOZ_ENABLE_WAYLAND=1\n' | tee -a /etc/profile
printf 'export QT_QPA_PLATFORMTHEME=qt5ct\n' | tee -a /etc/profile
