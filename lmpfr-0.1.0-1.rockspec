package = "lmpfr"
version = "0.1.0-1"
source = {
	url = "git+https://github.com/alexshpilkin/lmpfr",
	tag = "v0.1.0",
}
description = {
	summary = "LGMP-compatible Lua C API bindings for GNU MPFR",
	detailed =
		"The MPFR library is a C library for multi-precision floating-point " ..
		"computations with correct rounding. This extension allows using it " ..
		"from within Lua in a way that is API-compatible and interoperable " ..
		"with Wim Couwenberg's LGMP binding to the GMP library.",
	license = "CC0",
	homepage = "https://github.com/alexshpilkin/lmpfr",
	maintainer = "Alexander Shpilkin <ashpilkin@gmail.com>",
}
dependencies = {
	"lua >= 5.1, < 5.5",
}
external_dependencies = {
	GMP = { header = "gmp", library = "gmp" },
	MPFR = { header = "mpfr", library = "mpfr" },
}
build = {
	type = "builtin",
	modules = {
		mpfr = {
			sources = { "mpfr.c" },
			libraries = { "mpfr", "gmp" },
			incdirs = { "$(GMP_INCDIR)", "$(MPFR_INCDIR)" },
			libdirs = { "$(GMP_LIBDIR)", "$(MPFR_LIBDIR)" },
		},
	},
}
