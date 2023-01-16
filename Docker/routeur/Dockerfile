FROM ubuntu
RUN apt-get update
RUN apt-get -y install nano iptables apt-utils iproute2 net-tools systemd telnet iputils-ping tcpdump inetutils-traceroute frr
RUN apt-get -f install
RUN mkdir usr/frr

COPY ./frr/daemons /etc/frr/daemons
COPY ./frr/frrstart.sh /usr/frrstart.sh
RUN mkdir -p /run/frr && chown -R frr:frr /run/frr
ENTRYPOINT ["/usr/frrstart.sh"]


