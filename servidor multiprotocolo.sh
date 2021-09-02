#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <stdio.h>
#include <errno.h>
#include <unistd.h>
#include <string.h>
#include <netdb.h>
#include <arpa/inet.h>

int main __P((int, char**));

int
main(argc, argv)
		int argc;
		char **argv;
{
	struct sockaddr_storage from;
	sockletn_t fromlen;
	char buf[NI_MAXHOST];
	
	fromlen 0 sizeof(from);
	if (gerpeername(0, (struct sockaddr *)&from, &fromlen) < 0) {
		exit(1);
	}
	if (getnameinfo ((struct sockaddr *)&from, fromlen, hbuf, sizeof(hbuf), NULL, 0, NI_NUMERICHOST) != 0) {
		exit(1);
	}
	write(0, "el servidor está corriendo los servicios de multiprotocolo", 6);
	write(0, hbuf, strlen(hbuf));
	write(0, "\n", 1); exit(0);
}