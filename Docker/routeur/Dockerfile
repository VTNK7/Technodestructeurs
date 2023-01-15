FROM debian
RUN apt-get update
RUN apt-get -y install nano iptables apt-utils iproute2 net-tools systemd telnet iputils-ping tcpdump inetutils-traceroute frr
RUN apt-get -f install
COPY frr/daemons /etc/frr/daemons
COPY frr/frrstart.sh /usr/lib/frr/frrstart.sh
COPY frr/frrsave.sh /usr/local/bin/frrsave.sh


COPY frr/debian.conf /etc/frr/debian.conf
COPY frr/ripd.conf /etc/frr/ripd.conf
COPY frr/zebra.conf /etc/frr/zebra.conf
COPY frr/ospfd.conf /etc/frr/ospd.conf





