#!/usr/bin/env bash
set -ouex pipefail

# sudo -> doas + doas-sudo-shim
rm /etc/dnf/protected.d/sudo.conf
rpm-ostree override remove \
  sudo  sudo-python-plugin
rpm-ostree install -y \
  opendoas
wget -O /usr/bin/sudo https://github.com/jirutka/doas-sudo-shim/raw/v0.1.1/sudo
chmod +x /usr/bin/sudo
touch /etc/dnf/protected.d/doas.conf
printf 'opendoas\n' | tee -a /etc/dnf/protected.d/doas.conf
chown -c root:root /etc/doas.conf
chmod -c 0400 /etc/doas.conf

# install packages
rpm-ostree install -y \
  podman-docker \
  dash \
  cronie \
  polkit-gnome \
  alacritty \
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

# install hyprland
rpm-ostree install -y \
  xdg-desktop-portal-hyprland \
  waybar-hyprland \
  hyprpicker \
  hyprpaper \
  hyprland-plugins \
  hyprland-autoname-workspaces \
  hyprland
  
#wget -O /tmp/eos-flatpak-keyring.gpg https://origin.ostree.endlessm.com/keys/eos-flatpak-keyring.gpg

flatpak remote-add --if-not-exists fedora oci+https://registry.fedoraproject.org
flatpak remote-add --if-not-exists fedora-testing oci+https://registry.fedoraproject.org#testing
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak remote-add --if-not-exists flathub-beta https://flathub.org/beta-repo/flathub-beta.flatpakrepo
flatpak remote-add --if-not-exists kdeapps-nightly --from https://distribute.kde.org/kdeapps.flatpakrepo
flatpak remote-add --if-not-exists gnome-nightly https://nightly.gnome.org/gnome-nightly.flatpakrepo
flatpak remote-add --if-not-exists elemenetoryos-appcenter https://flatpak.elementary.io/repo.flatpakrepo


printf 'export SDL_VIDEODRIVER=wayland\n' | tee -a /etc/profile
printf 'export _JAVA_AWT_WM_NONREPARENTING=1\n' | tee -a /etc/profile
printf 'export QT_QPA_PLATFORM=wayland\n' | tee -a /etc/profile
printf 'export XDG_CURRENT_DESKTOP=sway\n' | tee -a /etc/profile
printf 'export XDG_SESSION_DESKTOP=sway\n' | tee -a /etc/profile
printf 'export GDK_BACKEND="wayland,x11"\n' | tee -a /etc/profile
printf 'export MOZ_ENABLE_WAYLAND=1\n' | tee -a /etc/profile
printf 'export QT_QPA_PLATFORMTHEME=qt5ct\n' | tee -a /etc/profile