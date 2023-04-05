#!/usr/bin/env bash
set -ouex pipefail

RELEASE="$(rpm -E %fedora)"
ARCH="${ARCH:-x86_64}"

addCoprs(){
    ostree remote add copr-solopasha-hyprland https://download.copr.fedorainfracloud.org/results/solopasha/hyprland/fedora-${RELEASE}-${ARCH}/
}

#removePkgs(){
#    rpm-ostree remove -y \
#}
#overrideRemovePkgs(){
#    rpm-ostree override remove -y \
#}

installPkgs(){
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
    hyprland \
    sddm
}

addFlatpakRemotes(){
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
}

setProfile(){
    printf 'export SDL_VIDEODRIVER=wayland\n' | tee -a /etc/profile
    printf 'export _JAVA_AWT_WM_NONREPARENTING=1\n' | tee -a /etc/profile
    printf 'export QT_QPA_PLATFORM=wayland\n' | tee -a /etc/profile
    printf 'export XDG_CURRENT_DESKTOP=sway\n' | tee -a /etc/profile
    printf 'export XDG_SESSION_DESKTOP=sway\n' | tee -a /etc/profile
    printf 'export GDK_BACKEND="wayland,x11"\n' | tee -a /etc/profile
    printf 'export MOZ_ENABLE_WAYLAND=1\n' | tee -a /etc/profile
}

main(){
    # coprs   
    addCoprs
    #
    addFlatpakRemotes
    #
    installPkgs
    #
    setProfile
}

#if [ -n "$1" ]; then
#    $1
#else
#    main
#fi
