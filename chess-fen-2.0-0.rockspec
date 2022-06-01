package = "chess-fen"
version = "2.0-0"
source = {
	url = "http://www.pjb.com.au/comp/lua/chess-fen-2.0.tar.gz",
	md5 = "dbe8e1df9777672cc24eea46a55e4d94"
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
