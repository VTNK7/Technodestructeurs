FROM router
RUN apt-get update
RUN yes | apt-get -y install isc-dhcp-server
RUN apt-get -f install
COPY dhcp/dhcpd.conf /etc/dhcp/dhcpd.conf
ENTRYPOINT /bin/bash
