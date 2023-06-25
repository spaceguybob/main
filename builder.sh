#!/usr/bin/env bash
set -ouex pipefail

rm /etc/dnf/protected.d/sudo.conf
rpm-ostree override remove \
  sudo \
  sudo-python-plugin
  
rpm-ostree install -y \
  opendoas
touch /etc/dnf/protected.d/doas.conf
printf 'opendoas\n' | tee /etc/dnf/protected.d/doas.conf
chmod 644 /etc/doas.conf
chown root:root /etc/doas.conf

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

rpm-ostree install -y \
  xdg-desktop-portal-hyprland \
  waybar-hyprland \
  hyprpicker \
  hyprpaper \
  hyprland-plugins \
  hyprland-autoname-workspaces \
  hyprland

touch /etc/profile.d/hyprgreenProfile.sh
printf 'export SDL_VIDEODRIVER=wayland\n' | tee -a /etc/profile.d/hyprgreenProfile.sh
printf 'export _JAVA_AWT_WM_NONREPARENTING=1\n' | tee -a /etc/profile.d/hyprgreenProfile.sh
printf 'export QT_QPA_PLATFORM=wayland\n' | tee -a /etc/profile.d/hyprgreenProfile.sh
printf 'export XDG_CURRENT_DESKTOP=sway\n' | tee -a /etc/profile.d/hyprgreenProfile.sh
printf 'export XDG_SESSION_DESKTOP=sway\n' | tee -a /etc/profile.d/hyprgreenProfile.sh
printf 'export GDK_BACKEND="wayland,x11"\n' | tee -a /etc/profile.d/hyprgreenProfile.sh
printf 'export MOZ_ENABLE_WAYLAND=1\n' | tee -a /etc/profile.d/hyprgreenProfile.sh
printf 'export QT_QPA_PLATFORMTHEME=qt5ct\n' | tee -a /etc/profile.d/hyprgreenProfile.sh