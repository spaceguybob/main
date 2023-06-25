#!/usr/bin env bash

# Add hyprgreen & uBlue's justfiles to users with home directories which lack a justfile.

if [ ! -z "$HOME" ] && [ -d "$HOME" ] && [ ! -f "${HOME}/.justfile" ]; then
  cat > "${HOME}/.justfile" << EOF
!include /usr/share/ublue-os/just/main.just
!include /usr/share/ublue-os/just/custom.just
!include /usr/share/hyprgreen/just/doas-conf.just
!include /usr/share/hyprgreen/just/recomended-vars.just
!include /usr/share/hyprgreen/just/add-flatpak-remotes.just
EOF
fi