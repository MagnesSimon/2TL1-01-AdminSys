$ORIGIN wt1-1.ephec-ti.be.
$TTL	3600
wt1-1.ephec-ti.be.	IN	SOA	ns.wt1-1.ephec-ti.be. HE201558@students.ephec.be. (

		         2019031001	; Serial
			 3600		; Refresh
			  600		; Retry
			86400		; Expire
			 600 )	; Negative Cache TTL

@	IN	 NS	 ns
	IN	 A	 51.178.40.219
@       IN       MX      10  mail

wt1-1.ephec-ti.be.		IN	NS	ns.wt1-1.ephec-ti.be.
ns.wt1-1.ephec-ti.be.		IN	A	51.178.40.219
www.wt1-1.ephec-ti.be.		IN	A	51.178.40.219
b2b.wt1-1.ephec-ti.be.		IN	A	51.178.40.219
intranet.wt1-1.ephec-ti.be.	IN	A	51.178.40.219
sip				IN	A	51.178.40.219
_sip._udp			SRV	0	0	5060	sip
_sip._tcp			SRV	0	0	5060	sip

mail		IN	A	51.178.40.219
smtp		IN	CNAME	mail
pop3		IN	CNAME	mail
imap		IN	CNAME	mail






