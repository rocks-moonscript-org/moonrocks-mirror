rockspec_format = "3.0"
package = "maptable"
version = "1.0.1-2"

description = {
	summary = "A table that transforms keys through a mapping function on store and lookup, e.g. for case-insensitive tables.",
	detailed = [[
maptable wraps a Lua table so that every key is passed through a user-supplied
mapper function before it is stored or looked up. Two keys that map to the same
value are treated as the same key, which makes it trivial to build
case-insensitive tables (map keys through string.lower), accent-folding tables,
or any other normalized-key structure.

Values are keyed by their mapped form internally, so lookups stay consistent
even when several distinct raw keys collapse to one mapped key. Iteration can
yield either the original (last-written) keys or the mapped keys, and a `fill`
helper efficiently loads a maptable from any iterator. Works on Lua 5.1 through
5.4 (a standalone `pairs` function is provided for 5.1, where the `__pairs`
metamethod is unavailable).
]],
	license = "MPL-2.0",
	homepage = "https://github.com/ProCern/lua-maptable",
	issues_url = "https://github.com/ProCern/lua-maptable/issues",
	maintainer = "Taylor Richberger <taylor.richberger@procern.com>",
	labels = {
		"table",
		"case-insensitive",
		"data-structures",
	},
}

dependencies = {
	"lua>=5.1",
}

source = {
	url = "git+https://github.com/ProCern/lua-maptable.git",
	tag = "v1.0.1",
}

build = {
	type = "builtin",
}
