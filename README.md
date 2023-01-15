# Technodestructeurs


TUTO 

git clone https://github.com/VTNK7/Technodestructeurs
cd Technodestructeurs

docker build -t apache Docker/apache &
docker build -t dns Docker/dns &
docker build -t dhcp Docker/dhcp &
docker build -t routeur Docker/routeur &
docker build -t client Docker/client &
docker build -t ftp Docker/ftp

docker compose up