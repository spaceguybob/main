ARG FEDORA_MAJOR_VERSION="${FEDORA_MAJOR_VERSION:-38}"

FROM ghcr.io/ublue-os/base-nvidia:"${FEDORA_MAJOR_VERSION}"

COPY ./copr-solopasha-hyprland.repo /etc/yum.repos.d/copr-solopasha-hyprland.repo

COPY ./builder.sh /tmp/builder.sh
RUN bash /tmp/builder.sh

RUN rm -rf /tmp/* /var/*
RUN ostree container commit
RUN mkdir -p /var/tmp && chmod -R 1777 /var/tmp
