ARG FEDORA_MAJOR_VERSION="${FEDORA_MAJOR_VERSION:-38}"
FROM ghcr.io/ublue-os/base-main:"${FEDORA_MAJOR_VERSION}"

COPY ./etc /etc

COPY ./builder.sh /tmp/builder.sh
RUN bash /tmp/builder.sh

#COPY ./usr /usr
#RUN chmod +x /usr/bin/sh

RUN rm -rf /tmp/* /var/*
RUN ostree container commit
RUN mkdir -p /var/tmp && chmod -R 1777 /var/tmp
