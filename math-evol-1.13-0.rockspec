package = "Math-Evol"
version = "1.13-0"
source = {
	url = "http://www.pjb.com.au/comp/lua/math-evol-1.13.tar.gz",
	md5 = "54e6fed837a70262d082abd46e23505a"
}
description = {
	summary = "Evolution search optimization",
	detailed = [[
	   This module implements the evolution search strategy.
	   This evolution strategy is a random strategy, and as such is
	   particularly robust and will cope well with large numbers of variables,
	   or rugged objective functions.
	]],
	homepage = "http://www.pjb.com.au/comp/lua/Evol.html",
	license = "MIT/X11"
}
dependencies = {
	"lua >= 5.1"
}
build = {
	type = "builtin",
	modules = {
	   ["Math.Evol"] = "Evol.lua"
	},
	copy_directories = { "doc", "test" }
}
