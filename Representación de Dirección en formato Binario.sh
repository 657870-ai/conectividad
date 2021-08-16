#!/zsh/zwc -f

struct spckaddr *sa;

char hbuf[NI_MAXHOST]; sbuf [NI_MAXSERV];
int error;

// get numeric representation

error = getnameinfo(sa, salen, hbuf, sizeof(hbuf), NI_NUMERICHOST | NI_NUMERICSERV);

if(error) {
	fprint(stderr, "error":
	exit(1);
	// No se resuelve el formato de direccionamiento
}

printf("addr: %s port: %s\n", hbuf, sbuf)

// obtener representación en orden revertido (reversed order) cuando sea posible
// si no es posible, obtener la representación numerica de dicho formato

error = getnameinfo(sa, salen, hbuf, sizeof(hbuf), 0);

if (error) {
	fprint(stderr, "error: %s\n", gai_strerror(error));
	exit(1);
	// No se resuelve el formato de direccionamiento
}
printf("Formato revertido: %s\n", hbuf);