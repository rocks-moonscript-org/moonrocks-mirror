rockspec_format = "3.0"
package = "elua"
version = "1.7.2-1"

description = {
	summary = "A simple implementation of a Lua equivalent of ERB",
	detailed = [[
A simple implementation of a Lua equivalent of ERB.

Features:

* Supports Lua 5.1 through 5.5 as well as LuaJIT.
* All the features of ERB, plus some more.
* Customizable tags.
* Full type hinting.
* Very fast template rendering; templates are compiled into Lua bytecode and run directly. No string parsing is done on templates after the compile phase.
]],
	license = "MPL-2.0",
	homepage = "https://forge.axfive.net/Taylor/elua",
	issues_url = "https://forge.axfive.net/Taylor/elua/issues",
	maintainer = "Taylor Richberger <taylor@axfive.net>",
	labels = {
		"template",
	},
}

dependencies = {
	"lua>=5.1",
}

source = {
	url = "git+https://forge.axfive.net/Taylor/elua.git",
	tag = "v1.7.2",
}

build = {
	type = "builtin",
	install = {
		bin = {
			elua = "bin/elua",
		},
	},
}
