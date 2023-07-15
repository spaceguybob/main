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

rpm-ostree override remove -y \
 xorg-x11-server-Xwayland

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
  youtube-dl \xorg-x11-server-Xwayland
  ffmpeg \
  mpd \
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
  unrar \
  NetworkManager-adsl \
  NetworkManager-bluetooth \
  NetworkManager-iodine-gnome \
  NetworkManager-l2tp-gnome \
  NetworkManager-libreswan-gnome \
  NetworkManager-openconnect-gnome \
  NetworkManager-openvpn-gnome \
  NetworkManager-ppp \
  NetworkManager-pptp-gnome \
  NetworkManager-vpnc-gnome \
  NetworkManager-wifi \
  NetworkManager-wwan \
  blueman \
  hyprland \
  xdg-desktop-portal-hyprland \
  xorg-x11-server-Xwayland \
  waybar-hyprland \
  hyprpicker \
  hyprpaper \
  hyprland-plugins \
  hyprland-autoname-workspaces \
  swaybg \
  swaylock \
  swayidle \
  wtype \
  wlogout \
  wlr-randr \
  wev \
  wlsunset \
  clipman \
  qt5-qtwayland

rpm-ostree install -y \
  gamescope 
