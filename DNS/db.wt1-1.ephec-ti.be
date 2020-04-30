$ORIGIN wt1-1.ephec-ti.be.
$TTL    86400
wt1-1.ephec-ti.be.       IN         SOA   ns.wt1-1.ephec-ti.be. he201558@students.ephec.be. (

         12 ; Serial
                3600      ; Refresh
                 600      ; Retry
               86400      ; Expire
               86400 )    ; TTL minimum


wt1-1.ephec-ti.be.                           IN      NS    ns.wt1-1.ephec-ti.be.

www                              IN      A     51.178.40.251

ns                              IN      A       51.178.40.251
b2b                             IN      CNAME   www
intranet                        IN      CNAME   www






