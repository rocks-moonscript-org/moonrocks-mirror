rockspec_format = "3.1"
package = "bytesview"
version = "0.0.1-2"

description = {
	summary = "Utilities around the bytesview protocols, for module-agnostic buffers",
	detailed = [[
Functions that help work with the bytesview protocols.

The bytesview protocols are the following metamethods:

metatable['bytesview:mutable'] = function(self) return lightuserdata_or_bytesview_mutable, maybe_offset, maybe_size end

metatable['bytesview:readonly'] = function(self) return lightuserdata_or_bytesview_readonly, maybe_offset, maybe_size end

This library is not necessary to work in these protocols.
]],
	license = "MPL-2.0",
	maintainer = "Taylor Richberger",
	labels = {
		"protocol",
		"api",
		"utility",
	},
}

dependencies = {
	"lua>=5.1",
}

source = {
	url = "git+https://forge.axfive.net/Taylor/bytesview.git",
	tag = "v0.0.1",
}

build = {
	type = "builtin",
	modules = {
		bytesview = {
			"src/bytesview.c",
		},
	},
}
