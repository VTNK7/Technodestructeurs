FROM debian
RUN apt-get update
RUN apt-get -y install apt-utils iptables iproute2 net-tools systemd telnet nano iputils-ping tcpdump inetutils-traceroute 
RUN apt-get -f install
RUN mkdir /var/scripts
ENV PATH "/var/scripts:$PATH"
ENTRYPOINT /bin/bash
