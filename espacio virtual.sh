static const char *lookup(void)
{
		struct sockaddr_storage ip6;
		int length;
		int error;
		
		static char hbuf[NI_MAXHOST];
		
		length = sizeof(ip6);
		if (getsockname(0, (struct sockaddr *) &ip6, &length)) {
				if (errno == ENOTSOCK) return "";
				log_error("Obteniendo el nombre de socket");
				return NULL;
		}
		
		error = getnameinfo((struct sockaddr *)&ip6, &length, hbuf,
			sizeof(hbuf), NULL, 0, NI_NUMERICHOST); if (error) {
				// posible intento de acceso
				return NULL;
			}			
			return hbuf;
		}
}