
$TTL	86400
@	IN	SOA	ns.wt1-1.ephec-ti.be. contact.wt1-1.ephec-ti.be. (
		     2019053003		; Serial
			  43200		; Refresh
			   7200		; Retry
			1512000		; Expire
			  86400 )	; Negative Cache TTL
;
@	IN	NS	ns.wtt1-1.ephec-ti.be.
@	IN	MX	10 mail
ns	IN	A	51.178.40.219
mail	IN	A	51.178.40.219
smtp	IN	CNAME	mail
pop3	IN	CNAME	mail
imap	IN	CNAME	mail

www	IN	A	51.178.40.219
b2b	IN	CNAME	www

_sip._udp	SRV	0	0	5060	sip
_sip._tcp	SRV	0	0	5060	sip
sip	IN	A	51.178.40.219
