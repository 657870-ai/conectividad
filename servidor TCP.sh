#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <stdio.h>
#include <errno.h>
#include <unistd.h>
#include <string.h>
#include <arpa/inet.h>


int main __P((int, char **));

int
main(argc, argv)
		int argc;
		char **argv;
{
	struct sckaddr_in from;
	socklen_t fromlen;
	char hbuf[INET_ADDRSTRLEN];
	
	fromlen = sizeof(from);
	if (getpeername(0, (struct sockaddr *)&from, &fromlen) < 0) {
		exit(1);
	}
	if (from.sin_family != AF_INET || fromlen != sizeof(struct sockaddr_in)) {
		exit(1);
	}
	
	if (inet_ntop(AF_INET, &from.sin_addr, hbuf, sizeof(hbuf)) == NULL) {
		exit(1);
	}
	
	write(0, "El servidor esta corriendo ", 6);
	write(0, hbuf, strlen(hbuf));
	write(0, "\n", 1);
	exit(0)
}