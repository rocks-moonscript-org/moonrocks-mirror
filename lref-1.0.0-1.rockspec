rockspec_format = "3.0"
package = "lref"
version = "1.0.0-1"

description = {
	summary = "A pure-lua implementation of luaL_ref and luaL_unref",
	detailed = [[
A pure-lua implementation of luaL_ref and luaL_unref.

The logic is copied exactly from Lua 5.5's source code, using the 5.5 behavior.
A reference table `t` has the freelist head at `t[1]`. If this value is `0` or
absent, the freelist is empty. If the value is non-zero, setting a reference
value sets that slot to the value.
]],
	license = "MPL-2.0",
	homepage = "https://forge.axfive.net/Taylor/lref",
	issues_url = "https://forge.axfive.net/Taylor/lref/issues",
	maintainer = "Taylor Richberger",
	labels = {
		"datastructures",
	},
}

dependencies = {
	"lua>=5.1",
}

source = {
	url = "git+https://forge.axfive.net/Taylor/lref.git",
	tag = "v1.0.0",
}

build = {
	type = "builtin",
}
