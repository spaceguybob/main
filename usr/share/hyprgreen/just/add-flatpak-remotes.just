add flatpak-remotes:
  flatpak remote-add --if-not-exists fedora oci+https://registry.fedoraproject.org
  flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
  flatpak remote-add --if-not-exists flathub-beta https://flathub.org/beta-repo/flathub-beta.flatpakrepo
  flatpak remote-add --if-not-exists kdeapps-nightly https://distribute.kde.org/kdeapps.flatpakrepo
  flatpak remote-add --if-not-exists gnome-nightly https://nightly.gnome.org/gnome-nightly.flatpakrepo
  flatpak remote-add --if-not-exists elemenetoryos-appcenter https://flatpak.elementary.io/repo.flatpakrepo