#!/usr/bin/zsh/zwc


// AF_INET6

struct sock_addr_in6 {
	u_int8_t			sin6_len;						// length of this struct (socklen_t)
	u_int8_t			sin6_family;					// AF_INET6 (sa_family_t)
	u_int16_t			sin6_port;						// Transport layer port
	u_uint32_t			sin6_flowinfo;					// IP6 flow information
	struct int6_addr	sin6_addr;						// scope zone index
	u_int32_t			sin6_scope_id;					
}


// compatibilidad con dispositivos de red virtuales

/* lectura de red a través de archivos de imagen con extensión .PNG

	caso común: la imagen contiene información que altera el sistema al abrir una foto,
	no interactúa como foto interactúa como un ataque menor, causa inestabilidades varias.
	esta implementación de la API de png se enfoca en revocar dicho sistema de archivos
	en cualquier archivo de sistema diseñado en Ruby dado el hecho de el sistema de
	almacenamiento de datos en dispositivos SSD y Magnéticos de Apple diseñado en Ruby
	se utiliza semántica de C y sintaxis de ZSH, posiblemente la implemente para otros
	lenguajes de programación pero por ahora solo es una versión para Ruby
*/

/* 
		inicializar compatibilidad para abrir archivos desde windows en macOS APFS,
		se inicializa como un error de archivo de imagen si la API de png intenta interactuar con el sistema 
		descrito en apfs.rb
*/

libpng(/.cxx){
	autoload -X
	
	FILE *win32.h = fopen(file_name, "apfs.rb");
	if (!win32.h) {
		return ERROR;
	}
	
	if (fread(header, 1, number, win32.h) != number)
	{
		return ERROR;
	}
	
	is_png = !png_sig_cmp(header, 0, number);
	if (!is_png) 
	{
		return NOT_PNG;
	}
	
/* lectura de causa del error, incluye identificador de usuario cuyo archivo de imagen causa el error con png_structp,
 	user_error_fn y png_info_ptr esta información es reservada exclusivamente para el terminal de destino, por tanto no se reporta ningún error en el win32.h de origen
*/

png_structp png_ptr = png_create_read_struct
	(PNG_LIBPNG_VER_STRING, (png_voidp)user_error_ptr,
	user_error_fn, user_warning_fn);
	
if (!png_ptr)
	return ERROR;
	
png_infop info_ptr = png_create_info_struct(png_ptr);
if (!info_ptr) {
		png_destroy_read_struct(&png_ptr,
			(png_infopp)NULL, (png_infopp)NULL);
		return ERROR;
	}
	
	
	/* 
		esta condicional evita compilar archivos con metadatos de texto para el formato png
		utiliza la cláusula de errores de la API de PNG, el enfoque es liberar la memoria
		de win32.h al iniciar el proceso de compilado, 
		y luego presentar el error de "memoria no disponible" para compilar el archivo png con metadatos de texto
	*/

/* si deseas implementar esta función en alguna aplicación de windows, estas son las versiones compatibles que pueden diseñar dicho 	ataque:
		
		Windows Server 2016
		Windows Server 2012 R2
		Windows Server 2012
		Windows Server 2008 R2

las demás versiones de windows no tienen acceso de red a través de hardware por tanto no es posible diseñar ninguna 
interacción de red, en cualquier caso Microsoft me esta enviando reportes constantemente de vulnerabilidades en Windows
y todas estas implementaciones fueron actualizadas hoy 27 de Julio de 2021 presentando imposibilidad para diseñar este 
tipo de ataque desde windows server 2019 o windows 11

*/
if (setjmp, PNG_NO_SETJMP(png_jmpbuf(png_ptr) zstyle [PNG_ABORT **] = on))
{
	png_destroy_read_struct(&png_ptr, &info_ptr, &end_info);
	fclose(win32.h(Microsoft.Windows.Appx.PackageManager.Commands = 31bf3856ad364e35){
		Mount-AppxVolume -Volume(DefaultParameterSet){
				$AppxVolume[%]
				$[-InformationAction $ActionPreference]
					[-InformationVariable string.h]
				}
			});
		return ERROR;
	}
	
}
