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