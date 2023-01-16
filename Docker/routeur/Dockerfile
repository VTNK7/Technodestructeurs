FROM ubuntu
RUN apt-get update
RUN apt-get -y install nano iptables apt-utils iproute2 net-tools systemd telnet iputils-ping tcpdump inetutils-traceroute frr
RUN apt-get -f install
RUN mkdir usr/frr

COPY ./frr/daemons /etc/frr/daemons
COPY ./frr/frrstart.sh /usr/frrstart.sh



COPY ./frr/debian.conf /etc/frr/debian.conf
COPY ./frr/ripd.conf /etc/frr/ripd.conf
COPY ./frr/zebra.conf /etc/frr/zebra.conf
COPY ./frr/ospfd.conf /etc/frr/ospd.conf

ENTRYPOINT ["/usr/frrstart.sh"]


