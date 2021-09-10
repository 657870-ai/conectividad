require 'endwin.sh'

class DragoDeFuego
	def vuelo
		def_prog_mode
		def_shell_mode
		end
	end
end

OjosDeLuz_oscuridad = DragoDeFuego.new
OjosDeLuz_oscuridad.reset_prog_mode
OjosDeLuz_oscuridad.reset_shell_mode


class RutinaDeVuelo < DragoDeFuego
	def aerea
		initscr
		newterm
	end
end

class Yo_mismo
	def cataratas_del_mojave
		reset_prog_mode
		reset_shell_mode
	end
end

copias_exactas.cataratas_del_mojave() = Yo_mismo.new

copias_exactas.endwin.sh
