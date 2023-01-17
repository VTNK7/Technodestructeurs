all: router dns ftp client box apache

router:
	docker build -t router Docker/router

dns:
	docker build -t dns Docker/dns

ftp:
	docker build -t ftp Docker/ftp

client:
	docker build -t client Docker/client

box:
	docker build -t box Docker/box

apache:
	docker build -t apache Docker/apache
