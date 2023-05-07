# hyprgreen
A custom experimental [fedora](https://fedoraproject.org/) [silverblue](https://silverblue.fedoraproject.org/)/[kinote](https://kinoite.fedoraproject.org/) [OCI](https://opencontainers.org/) [image](https://manpages.ubuntu.com/manpages/jammy/en/man5/containers-dockerfile.5.html), based on [ublue-os](https://github.com/ublue-os/) with the [hyprland](https://hyprland.org/) wayland compositor.

[![DockerPublish](https://github.com/hyprgreen/main/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/hyprgreen/main/actions/workflows/docker-publish.yml) ![Latest release date](https://img.shields.io/github/release-date/hyprgreen/main?color=pink&label=Latest%20Release%20Date&logo=github) ![Commit Activity](https://img.shields.io/github/commit-activity/w/hyprgreen/main?color=teal&label=Commit%20Activity&logo=github)

# Table of Contents
- [Why?](#why)
- [Install via Rebase](#install-via-rebase)
  - [Rebase to the latest tag (Recomended)](#rebase-to-the-latest-hyprgreen-tag-recomended)
  - [Rebase to a specific tag](#rebase-to-a-specific-hyprgreen-tag)
  - [Rebase to the hyprgreen nightly build (Not Recomended)](#rebase-to-the-hyprgreen-nightly-build-not-recomended)
  - [Rebase to the hyprgreen git build (Not Recomended)](#rebase-to-the-hyprgreen-git-build-not-recomended)
- [Updating](#updating)
- [Enabled flatpak remotes](#enabled-flatpak-remotes)
- [ISO Installer?](#iso-installer)


### Why?
Why not?

### Whats incuded?
#### Desktop enviroment:
- `hyprland` dynamic tiling Wayland compositor that doesn't sacrifice on its looks. 
- `waybar` polybar like wlroots status bar
- `kitty terminal` fast feature-rich terminal with GPU acceleration
- `sddm` kde's Simple Desktop Display Manager
- `clipman` clipboard manager
- `wofi` rofi like lancher for wayand
- `mako` notication deamon
- `wlogout` logout screen for wayland
- `gnome polkit` gnome's policy kit
- `gamescope` & `xwayland` SteamOS's  micro-compositor and xorg emulation layer
- `qt5` & `qt6` Wayland Support
- `pipewire` & `wireplumber`
- `xdg-desktop-portal-hyprland` hyprland's extended version of `xdg-desktop-portal`
#### Preinstalled apps:
##### Command line apps:
  - `youtube-dl`
  - `ffmpeg` 
##### Graphical apps:
  - `thunar` file manager
  - `eye of mate` image viewer
  - `qt5ct` & `qt6ct` qt5 and qt6 settings
##### Generic wlroots & wayland utils:
  - `wtype` xdotool for wayland
  - `wlsunset` nightmode/redshift for wayland
  - `wlr-randr` xrandr for wayland
  - `swaybg`  wallpaper setter for wlroots
  - `swaylock` lock screen for wlroots
  - `swayidle` idle screen for wlroot
  - `grim` & `grimshot` screenshoting tool for wayland
##### Meida players (video & audio):
  - `mpv` a powerfull video player
  - `mpd` the music player deamon
#### System Tweaks:
Hyprgreen comes with a few System tweaks predone:
 - Aliased `/bin/sh` to the `dash` shell to speed up `POSIX` shell scripts
 - Set `XDG_CURRENT_DESKTOP` & `XDG_SESSION_DESKTOP` to `sway` improve compatibility with graphical apps
#### Incuded flatpak remotes:
Hyprgreen comes with serveral flatpak remotes prenabled:
 - `fedora` fedora's offical flatpak remote
 - `fedora testing`  fedora's testing flatpak remote
 - `flathub` flathub's offical flatpak remote
 - `flathub beta` flathub's beta flatpak remote
 - `elemenetoryOS appcenter` elementory os's flatpak remote
 - `endlessOS apps` endless os's flatpak remote
 - `kde apps nightly` kde's flatpak remote
 - `gnome apps nightly` gnome's flatpak remote

### Install via Rebase
#### Rebase to the latest hyprgreen tag (recomended)
[see](https://github.com/hyprgreen/main/releases/latest)
Install the latest release of hyprgreen via rebase
```sh
sudo rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/hyprgreen/main:latest
```
#### Rebase to a specific hyprgreen tag
tag [see](https://github.com/vibrantleaf/hyprgreen/releases)
Install a specific release of hyprgreen via rebase
```sh
sudo rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/hyprgreen/main:v38.0.2
```
#### Rebase to the hyprgreen nightly build (Not Recomended)
Install the nightly build of hyprgreen (Not Recomended) via rebase
```sh
sudo rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/hyprgreen/main:nightly
```
#### Rebase to the hyprgreen git build (Not Recomended)
Install the 'git' build of hyprgreen (Not Recomended) via rebase
```sh
sudo rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/hyprgreen/main:main
```
### Updating
For latest,nightly or git users:
```sh
sudo rpm-ostree update
```
For specific tag users:
- check for any new relases. [see](https://github.com/hyprgreen/main/releases)
- then rebase to the new specific release tag
```sh
# example
sudo rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/hyprgreen/main:v38.0.5
```

### ISO installer?
Not yet maybe one day
