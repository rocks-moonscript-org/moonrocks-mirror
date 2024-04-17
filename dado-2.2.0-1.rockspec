package = "Dado"

version = "2.2.0-1"

description = {
   summary = "Database Facilities for LuaSQL",
   detailed = [[
Dado is a package that offers some facilities implemented over LuaSQL connection objects. Its main goals are: better error messages, iterators to access the result set and more homogeneity in some commonly used database operations.]],
   license = "MIT/X11",
   homepage = "http://www.ccpa.puc-rio.br/software/dado",
}

dependencies = {
   "lua >= 5.1"
   -- no specific version of LuaSQL can be pinned down as a dependency,
   -- since Dado can load any LuaSQL driver at runtime.
}

source = {
   url = "git+https://github.com/tomasguisasola/dado.git",
}

build = {
	type = "builtin",
	modules = {
		dado = "src/dado.lua",
		["dado.sql"] = "src/dado/sql.lua",
		["dado.object"] = "src/dado/object.lua",
		["table.extra"] = "src/table/extra.lua",
	},
	copy_directories = {
		"doc", "tests",
	},
}
