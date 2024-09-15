FROM ubuntu:24.04
RUN apt update && apt -y upgrade && \
    apt install -y tftpd-hpa && mkdir -p /var/lib/tftpboot && \
    chown -R tftp:tftp /var/lib/tftpboot && \
    chmod -R 777 /var/lib/tftpboot

EXPOSE 69/udp

CMD ["/usr/sbin/in.tftpd", "--foreground", "--user", "tftp", "--address", "0.0.0.0:69", "--secure", "-l", "-c", "-s", "/var/lib/tftpboot"]
