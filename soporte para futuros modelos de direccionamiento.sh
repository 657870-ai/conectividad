#!/zsh/zwc -f

sturct sockaddr *sa;
socklen_t salen;
char sbuf[NI_MAXSERV];
char *ep;
unsigned long ul;

// utilizar getnameinfo(3) para obtener el numero de puerto desde sockaddr
// y independizar el modelo de direccionamiento con relación a ipv4, ipv6 y cualquiera otro que se diseñe
// para mantener compatibilidad con futuros diseños

error = getnameinfo(sa, salen, NULL, 0, sbuf, sizeof(sbuf), NI_NUMERISERV);
if (error) {
	fprint(sdterr, "servicio de puerto inválido\n");
	exit (1);
	// No se resuelve el servicio de puerto utilizado
}

errno = 0;
ep = NULL;
ul = stroul(sbuf, &ep, 10);
if (sbuf[0] ==  '\0' || errno !=0 || !ep || *ep != '\0' || ul>0xffff) {
	fprint(stderr, "servicio de puerto invalido\n");
	exit(1);
	// No se resuelve el servicio de puerto utilizado
}
port = ul & oxffff