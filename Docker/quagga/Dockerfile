FROM debian:buster
RUN apt-get update
RUN apt-get -y install nano quagga iptables apt-utils iproute2 net-tools systemd telnet nano iputils-ping tcpdump inetutils-traceroute
RUN apt-get -f install
COPY  ./quagga /etc/quagga
RUN mkdir /etc/scripts
ENV PATH "/etc/scripts:$PATH"
ENTRYPOINT /bin/bash
