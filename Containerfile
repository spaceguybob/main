FROM docker pull ghcr.io/vibrantleaf/doas-sudo-shim-builder:master AS doas-sudo-shim

ARG FEDORA_MAJOR_VERSION="${FEDORA_MAJOR_VERSION:-38}"
FROM ghcr.io/ublue-os/base-main:"${FEDORA_MAJOR_VERSION}"

COPY ./etc /etc
COPY ./usr /usr

COPY ./builder.sh /tmp/builder.sh
RUN bash /tmp/builder.sh

COPY --from=doas-sudo-shim /usr/bin/sudo /usr/bin/sudo
COPY --from=doas-sudo-shim /usr/share/man/man1/sudo.1 /usr/share/man/man1/sudo.1

RUN rm -rf /tmp/* /var/*
RUN ostree container commit
RUN mkdir -p /var/tmp && chmod -R 1777 /var/tmp
