$ORIGIN wt1-1.ephec-ti.be.
$TTL    86400
wt1-1.ephec-ti.be.       IN         SOA   ns.wt1-1.ephec-ti.be. he201558@students.ephec.be. (

         12 ; Serial
                3600      ; Refresh
                 600      ; Retry
               86400      ; Expire
               86400 )    ; TTL minimum


wt1-1.ephec-ti.be.      IN      NS      ns.wt1-1.ephec-ti.be.

@                       IN      MX      mail.woodytoys1-1.be

www                     IN      A       51.178.40.251

ns                      IN      A       51.178.40.251
b2b                     IN      CNAME   www
intranet                IN      CNAME   www

hostname                IN      A       51.178.41.198
mail                    IN      A       51.178.40.198
postfixadmin            IN      CNAME   hostname



