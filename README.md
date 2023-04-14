# hyprgreen
A custom experimental [fedora](https://fedoraproject.org/) [silverblue](https://silverblue.fedoraproject.org/)/[kinote](https://kinoite.fedoraproject.org/) [OCI](https://opencontainers.org/) [image](https://manpages.ubuntu.com/manpages/jammy/en/man5/containers-dockerfile.5.html), based on [ublue-os](https://github.com/ublue-os/) with the [hyprland](https://hyprland.org/) wayland compositor.

[![DockerPublish](https://github.com/hyprgreen/main/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/hyprgreen/main/actions/workflows/docker-publish.yml) [![Docker Image CI](https://github.com/hyprgreen/main/actions/workflows/docker-image.yml/badge.svg)](https://github.com/hyprgreen/main/actions/workflows/docker-image.yml) ![Latest release date](https://img.shields.io/github/release-date/hyprgreen/main?color=pink&label=Latest%20Release%20Date&logo=github) ![Commit Activity](https://img.shields.io/github/commit-activity/w/hyprgreen/main?color=teal&label=Commit%20Activity&logo=github)

# Table of Contents
1. [Why?](#why)
2. [Install via Rebase](#install-via-rebase)
  - [Rebase to the latest tag](#rebase-to-the-latest-hyprgreen-tag)
  - [Rebase to a specific tag](#rebase-to-a-specific-hyprgreen-tag)
  - [Rebase to the hyprgreen nightly build (Not Recomended)](#rebase-to-the-hyprgreen-nightly-build-not-recomended)
  - [Rebase to the hyprgreen git build (Not Recomended)](#rebase-to-the-hyprgreen-git-build-not-recomended)
3. [Updating](#updating)

### Why?
Why not?

### Install via Rebase
#### Rebase to the latest hyprgreen tag
[see](https://github.com/hyprgreen/main/releases/latest)
Install the latest release of hyprgreen via rebase
```sh
sudo rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/hyprgreen/main:latest
```
#### Rebase to a specific hyprgreen tag
tag [see](https://github.com/vibrantleaf/hyprgreen/releases)
Install the a specific release of hyprgreen via rebase
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
sudo rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/hyprgreen/main:v38.0.2

```
