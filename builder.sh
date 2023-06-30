#!/usr/bin/env bash
set -ouex pipefail

chmod +x /usr/share/hyprgreen/just/hyprgreen-just.sh
chmod +x /usr/share/hyprgreen/vars/hyprgreen-vars.sh

ln -s /usr/share/hyprgreen/just/hyprgreen-just.sh /etc/profile.d/hyprgreen-just.sh
ln -s /usr/share/hyprgreen/vars/hyprgreen-vars.sh /etc/profile.d/hyprgreen-vars.sh
ln -s /usr/share/hyprgreen/yum.repos.d/copr-solopasha-hyprland.repo /etc/yum.repos.d/copr-solopasha-hyprland.repo

rm /etc/dnf/protected.d/sudo.conf

rpm-ostree override remove \
  sudo \
  sudo-python-plugin
  
rpm-ostree install -y \
  opendoas

ln -s /usr/share/hyprgreen/dnf/protected.d/doas.conf /etc/dnf/protected.d/doas.conf 

chmod 644 /etc/doas.conf
chown root:root /etc/doas.conf

rpm-ostree install -y \
  podman-docker \
  dash \
  cronie \
  polkit-gnome \
  kitty \
  grimshot \
  mako \
  slurp \
  wofi \
  tuigreet \
  qt5ct \
  dolphin \
  imv \
  mpv  \
  yt-dlp \
  ffmpeg \
  audiotube \
  swaybg \
  swaylock \
  swayidle \
  wtype \
  wlogout \
  wlr-randr \
  wev \
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
  git \
  pam-u2f \
  pamu2fcfg \
  fido2-tools \
  unrar

rpm-ostree install -y \
  xdg-desktop-portal-hyprland \
  waybar-hyprland \
  hyprpicker \
  hyprpaper \
  hyprland-plugins \
  hyprland-autoname-workspaces \
  hyprland
