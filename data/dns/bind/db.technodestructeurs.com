$TTL    604800
@ IN SOA dns.technodestructeurs.com. root.technodestructeurs.com.  (
        20041122   ; Serial  -> N° de série à incrémenter à chaque modif
                   ;            de ce fichier. Ce N° est utilisé par les
                   ;            serveurs esclaves pour lui indiquer qu'il
                   ;            doit mettre à jour sa base. Par commodité
                   ;            ce n° est une date à l'envers.
        604800     ;Refresh ->  A l'expiration du délai Refresh exprimé en
                   ;            secondes, le serveur excalve va entrer en
                   ;            communication avec le maitre et si il ne
                   ;            le trouve pas, il fera une nouvelle
                   ;            tentative au bout du délai Retry et si au
                   ;            bout du délai Expire il considerera que le
                   ;            serveur n'est plus disponible.
        86400      ; Retry
        2419200    ; Expire
        604800 )   ; Minimum -> Durée de vie minimum du cache en secondes
;** Les 3 lignes suivantes permettent au serveur de se retrouver lui même
               NS      dns.technodestructeurs.com.        ;Nom du serveur
dns        A       120.0.36.52                     ;Adresse IP du
                                                       ;serveur de noms

;** Les lignes suivantes définissent la table entre les noms et les IP
www         A       120.0.36.51


