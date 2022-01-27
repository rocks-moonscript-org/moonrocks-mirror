package = "table_goodies"
version = "1.0-0"
source = {
	url = "git+https://gitlab.com/benrob0329/lua-table_goodies",
	tag = "v1.0-1",
}

description = {
	summary = "Some extra table functions for general use",
	detailed = [[
		This is a small package for extra (can't live without) functions for working with tables.
		This includes:
		* `table.equals(t1, t2)` -> `bool`, a recursive (deep) equality function
		* `table.merge(t, ...)` -> `t`, a table merging function (select("#", ...) -> select(1, ...) -> t1)
		* `table.map(t, f)` -> `t`, a mapping (apply f to every value) function
	]],
	homepage = "https://gitlab.com/benrob0329/lua-table_goodies",
	license = "CC0",
}

dependencies = {
	"lua >= 5.1"
}

build = {
	type = "builtin",
	modules = {
		lambda = "table_goodies.lua"
	}
}
