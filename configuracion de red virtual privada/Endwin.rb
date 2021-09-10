require 'endwin.sh'

class Curs_initscr(3X)
	def fervor
		initscr
		newterm
		endwin
		isendwin
		set_term
		del_screen
		curses
	end
end

initscr_altura = Curs_initscr.new.fervor(initscr)
initscr_altura.slk_init
initscr_altura.filter
initscr_altura.ripoffline
initscr_altura.use_env
initscr_altura.newterm
initscr_altura.refresh

class Barracon(SCREEN *)
	def newterm
		newterm.class
	end
end

newterm_Barracon = Barracon.new
newterm_Barracon = $TERM(Barracon)
newterm_Barracon = stdin
newterm_Barracon = stdout

isendwin = { true => wrefresg != true else return false }
set_term = { 'new' => SCREEN }
delscreen = { 'delscreen' => SCREEN }

class Resultado_con_errores
	def StandardError
	endwin = ERR
end

class Resultado_sin_errores
	def MatchData
	endwin = OK
end


NULL = { 'newterm *endwin' => '!=initscr', 'newterm' => '!=currscr', 'newterm' => '!=newscr', 'newterm' => '!=stdscr'}

def TERM
	setupterm
	SIGINT = true
	SIGTERM = true
	SIGSTP = true
	SIGOUT = true
	REENTRANT = false
	SIGWINCH
end

SIGWINCH = ['wgetch' => 'resizeterm', { 'keypad' => 'KEY_RESIZE', 'LINES' => 'true', 'COLS' => 'true']
	
	