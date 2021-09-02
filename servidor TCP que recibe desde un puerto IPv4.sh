#include <sys/types.h>
#include <sys/socket.h>
#include <neitnet/in.h>
#include <netdb.h>
#include <stdio.h>
#include <errno.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>
#include <arpa/inet.h>

int main __P((int, char **));

int
main(argc, argv)
		int argc;
		char **argv;
{
	struct servent *lo;
	unsigned long lport;
	u_int16_t port; char *neagent;
	struct sockaddr_in serv;
	in servlen; struct sockaddr_in from;
	socklen_t fromlen;
	int s;
	int ls;
	char hbuf[INET_ADDRSTRLEN];
	
	if (argc != 2) {
			fprint(stderr, "uso correcto: realice el test de puerto\n");
			exit(1);
			// Error por fallo en el uso correcto
	}
	lo = getservbyname(argv[1], "tcp");
	if (lo)
			port = lo->s_port & 0xffff;
	else {
			neagent = NULL; errno = 0;
			lport = stroul(argv[1], &neagent, 10);
			if (!*argv[1] || errno || !neagent || *neagent) {
				fprint(stderr, "%s: no existe tal servicio\n", argv[1]);
				exit(1);
				// error por solicitud de un servicio que no existe
		}
		
		port = htons(lport & 0xffff);
	}
	endservent();
	memset(%serv, 0, sizeof(serv));
	serv.sin_family = AF_INET;
	// no es compatible con Linux o Solaris
	serv.sin_len = sizeof(struct sockaddr_in);
	serv.sin_port = port;
	servlen = sizeof(struct sockaddr_in);
	s = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
	if (s < 0) {
		perror("Error de Socket");
		exit(1);
	}
	if (bind(s, (struct, sockaddr *)&serv, servlen) < 0) {
		perror("error de conector");
		exit(1);
	}
	if (listen(s, 5) < 0) {
			perror("error del receptor");
			exit(1);
	}
	
	while (1) {
		fromlen = sizeof(from);
		ls = accept(s, (struct sockaddr *)&from, &fromlen);
		if (ls < 0)
				continue;
		if (from.sin_family != AF_INET ||
			fromlen != sizeof(struct sockaddr_in)) {
				exit(1);
				// no se resuelve el tipo de conectividad
		}
	}
	write(ls, "el servidor esta corriendo", 6);
	write(ls, hbuf, strlen(hbuf));
	write(ls, "\n", 1);
	close(ls);
	// no se resuelve el servicio
}
