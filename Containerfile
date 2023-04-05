ARG FEDORA_MAJOR_VERSION="${FEDORA_MAJOR_VERSION:-38}"
FROM ghcr.io/ublue-os/base-main:"${FEDORA_MAJOR_VERSION}"

RUN ./builder.sh

RUN rm -rf /tmp/* /var/*
RUN ostree container commit
RUN mkdir -p /var/tmp && chmod -R 1777 /var/tmp
