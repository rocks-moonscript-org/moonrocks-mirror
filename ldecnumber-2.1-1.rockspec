package = "ldecNumber"
version = "2.1-1"
source = {
	url = "http://luaforge.net/frs/download.php/2551/ldecNumber-21.tar.gz"
}
description = {
	summary = "Lua decNumber, a Lua 5.1 wrapper for IBM decNumber",
	detailed = [[
Lua decNumber, a Lua 5.1 wrapper for IBM decNumber, implements the proposed General Decimal Arithmetic standard IEEE 754r. It has the Lua 5.1 arithmetic operators and more, full control over rounding modes, and working precision up to 69 decimal digits.		
	]],
	homepage = "http://luaforge.net/projects/ldecnumber/",
	license = "MIT/X11"
}
dependencies = {
	"lua >= 5.1"
}
build = {
	type = "builtin",
	modules = {
		ldecNumber = {
			sources = {
				"ldecNumber.c",
				"decNumber/decNumber.c",
				"decNumber/decContext.c",
			},
			incdirs = { "decNumber" },
		},
	}
}
