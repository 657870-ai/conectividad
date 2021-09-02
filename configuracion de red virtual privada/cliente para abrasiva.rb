require 'abrasiva.rb'

class Openvpn
	def tintura(ego_ajeno)
		@dev = tun
		@proto = tcp-client
		@remote = --ifconfig ip "@#{OpenVpn}"
	end
end