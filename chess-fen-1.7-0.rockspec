package = "chess-fen"
version = "1.7-0"
source = {
	url = "http://www.pjb.com.au/comp/lua/chess-fen-1.7.tar.gz",
	md5 = "27b5524af607a3860f64c2f9ecd603af"
}
description = {
	summary = "Chess position in FEN syntax",
	detailed = [[
	   This module manipulates chess positions in FEN syntax.
       It can apply moves to a position, and provides an application
       pgn2eco, which takes some opening moves and outputs the
       most appropriate ECO number, according to ECOMast.txt
	]],
	homepage = "http://www.pjb.com.au/comp/lua/fen.html",
	license = "MIT/X11"
}
dependencies = {
	"lua >= 5.1"
}
build = {
	type = "builtin",
	modules = {
	   ["chess.fen"] = "fen.lua"
	},
	copy_directories = { "bin", "doc", "test" }
}
