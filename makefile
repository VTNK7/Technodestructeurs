DOCKER_DIR=Docker

all: apache DHCP DNS FTP quagga
	@

apache: apache
DHCP: DHCP
DNS: DNS
FTP: FTP
quagga: quagga


# Generic rule
%:
	docker build -t $@ $(DOCKER_DIR)/$@


# to remove all built images
clean:
	docker image rm -f $(shell ls $(DOCKER_DIR))