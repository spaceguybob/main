# hyprgreen
a custom fedora silverblue OCI image based on ublue-os with the hyprland wayland compositor

### Install via Rebase
#### Rebase to the latest hyprgreen tag
[see](https://github.com/vibrantleaf/hyprgreen/releases/latest)
Install the latest release of hyprgreen via rebase
```sh
sudo rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/vibrantleaf/hyprgreen:latest
Install
```
#### Rebase to a specific hyprgreen tag
tag [see](https://github.com/vibrantleaf/hyprgreen/releases)
Install the a specific release of hyprgreen via rebase
```sh
sudo rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/vibrantleaf/hyprgreen:v38.0.1
```
#### Rebase to the hyprgreen nightly build (Not Recomended)
Install the nightly build of hyprgreen (Not Recomended) via rebase
```sh
sudo rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/vibrantleaf/hyprgreen:nightly
```
#### Rebase to the hyprgreen git build (Not Recomended)
Install the 'git' build of hyprgreen (Not Recomended) via rebase
```sh
sudo rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/vibrantleaf/hyprgreen:main
```
