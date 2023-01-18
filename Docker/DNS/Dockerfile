FROM ubuntu
RUN apt-get update
RUN apt-get -y install dnsutils iptables apt-utils iproute2 net-tools systemd telnet nano iputils-ping tcpdump inetutils-traceroute bind9
RUN apt-get -f install

ENTRYPOINT /data/init.sh;