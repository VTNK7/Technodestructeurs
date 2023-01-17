$TTL    604800
@       IN      SOA     ns1.bd.technodestructeurs.com. root.bd.technodestructeurs.com. (
                  2         ; Serial
             604800         ; Refresh
              86400         ; Retry
            2419200         ; Expire
             604800 )       ; Negative Cache TTL
;
@       IN      NS      ns1.bd.technodestructeurs.com.
@       IN      NS      ns2.bd.technodestructeurs.com.
@       IN      A       120.0.36.14
www     IN      A       120.0.36.14