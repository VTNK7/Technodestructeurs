FROM ubuntu
RUN apt-get update
RUN apt-get -y install dnsutils isc-dhcp-client apt-utils iptables iproute2 net-tools systemd telnet nano iputils-ping tcpdump inetutils-traceroute 
RUN apt-get -f install
RUN mkdir /var/scripts
ENV PATH "/var/scripts:$PATH"
ENTRYPOINT /data/init.sh
