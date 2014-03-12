package = "ldecNumber"
version = "2.1-3"
source = {
	url = "https://chiselapp.com/user/e/repository/ldecNumber/zip/ldecNumber_fsl21.zip?uuid=fsl21",
	file = "ldecNumber_fsl21.zip"
}
description = {
	summary = "Lua decNumber, a Lua 5.1 wrapper for IBM decNumber",
	detailed = [[
Lua decNumber, a Lua 5.1 wrapper for IBM decNumber, implements the proposed General Decimal Arithmetic standard IEEE 754r. It has the Lua 5.1 arithmetic operators and more, full control over rounding modes, and working precision up to 69 decimal digits.		
	]],
	homepage = "https://chiselapp.com/user/e/repository/ldecNumber",
	license = "MIT/X11"
}
dependencies = {
	"lua >= 5.1, < 5.2"
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