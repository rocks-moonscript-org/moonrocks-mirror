package = "psl"
version = "0.3-0"
source = {
	url = "https://github.com/daurnimator/lua-psl/archive/v0.3.zip";
	dir = "lua-psl-0.3";
}
description = {
	summary = "Bindings to libpsl, a C library that handles the Public Suffix List (PSL)";
	detailed = [[
Bindings to libpsl, a C library that handles the Public Suffix List (PSL).

The PSL is a list of domains where there may be sub-domains outside of the administrator's control.
e.g. the administrator of '.com' does not manage 'github.com'.

This list has found use in many internet technologies including:

  - preventing cross-domain cookie leakage
  - allowance of issuing wildcard TLS certificates

More information can be found at https://publicsuffix.org/]];
	homepage = "https://github.com/daurnimator/lua-psl";
	license = "MIT";
}
dependencies = {}
external_dependencies = {
	PSL = {
		header = "libpsl.h";
		library = "psl";
	};
}
build = {
	type = "builtin";
	modules = {
		psl = {
			sources = "psl/psl.c";
			libraries = {
				"psl";
			};
			defines = {
			};
			incdirs = {
				"$(PSL_INCDIR)";
			};
			libdirs = {
				"$(PSL_LIBDIR)";
			};
		};
	};
}
