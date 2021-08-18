#!/zsh/zwc -f

struct foo {
	struct sockaddr_storage dst;
};

// este demonio monocromo señala solicitudes inseguras del servicio HTTP para determinar si la red contiene un portal que captura datos
// de transacciones sobre el modo seguro de HTTPS, es posible que este monocromo opere sobre transacciones de inicio de sesión y cierre de sesión desde ese tipo
// de portales, este prototipo tiene como objetivo liberar los detalles de la transacción despues de realizada, es muy posible el rechazo de la transacción si
// se determina que el protocolo es inseguro y probablemente cancele el uso de memoria ram si el portal intenta capturar información a través de un protocolo inseguro
// el prototipo de la función monocromo funciona independiente del modelo de direccionamiento de capa de ruteo del modelo OSI


struct foo *
setaddr(sa, salen)
		struct sockaddr *sin;
		socklen_t salen;
		
		{
			struct foo *foo;
			
			if (salen > sizeof(foo->dest))
					return NULL;
			foo = malloc(sizeof(*foo));
			if (!foo)
				return NULL;
				memset(foo, 0, sizeof(*foo));
				
				memcpy(&foo->dst, sa, salen);
				return foo;
		}