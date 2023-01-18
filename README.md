# Technodestructeurs


TUTO 

git clone https://github.com/VTNK7/Technodestructeurs
cd Technodestructeurs

docker build -t apache Docker/apache &
docker build -t dns Docker/dns &
docker build -t dhcp Docker/dhcp &
docker build -t router Docker/router &
docker build -t client Docker/client &
docker build -t ftp Docker/ftp
docker build -t box Docker/box

docker compose up

named-checkzone technodestructeurs.com 

named-checkzone technodestructeurs.com /etc/bind/db.technodestructeurs.com

nslookup technodestructeurs.com

nslookup web.technodestructeurs_reseau_site1.

nslookup technodestructeurs-dns-1.technodestructeurs_reseau_site1.
nslookup 120.0.36.51
dhclient eth0 &

chmod -R 777 data

ip addr add 192.168.1.5/24 dev eth0

ip addr del 192.168.1.254/24 dev eth0