FROM ubuntu
RUN apt-get update
RUN apt-get -y install iptables apt-utils iproute2 net-tools systemd telnet nano iputils-ping tcpdump inetutils-traceroute bind9
RUN apt-get -f install
COPY ./named.conf /etc/bind/named.conf
COPY ./zone/db.technodestructeurs.com /etc/bind//zone/db.technodestructeurs.com

EXPOSE 53/udp

CMD [ "sh", "-c", "named -4 -g -u bind" ]