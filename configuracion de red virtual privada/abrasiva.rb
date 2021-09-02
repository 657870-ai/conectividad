class Openvpn
	def initialize(--ifconfig)
		@ifconfig = $%
	end
	
	def --dev tun
		@--ifconfig ||= @neagent.vpn = true
		@--remote kadmind ? "Bienvenido#{@kdc}, iniciando sistema de red virtual privada." : 'Servidor Kerberos version 5.'
	end
end

Openvpn.new('tunel').--ifconfig ares_set_local_ip4 && ares_set_local_ip6 --dev tap

remote = Openvpn.new('punto de acceso remoto')
remote.--dev tun