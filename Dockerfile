ARG target=arm32v6
FROM $target/alpine

ARG arch=arm
ENV ARCH=$arch

COPY tmp/qemu-$ARCH-static* /usr/bin/

COPY out/configmap-reload /configmap-reload

ENTRYPOINT ["/configmap-reload"]

