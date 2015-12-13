package = "Dado"

version = "1.7.1-1"

description = {
   summary = "Database Facilities for LuaSQL",
   detailed = [[
      Dado is a package that offers some facilities implemented over LuaSQL
      connection objects. Its main goals are: better error messages, iterators
      to access the result set and more homogeneity in some commonly used
      database operations.
   ]],
   license = "MIT/X11",
   homepage = "http://www.ccpa.puc-rio.br/software/dado",
}

dependencies = {
   "lua >= 5.1"
   -- no specific version of LuaSQL can be pinned down as a dependency,
   -- since Dado can load any LuaSQL driver at runtime.
}

source = {
   url = "http://www.ccpa.puc-rio.br/software/dado/download/dado-1.7.1.tar.gz",
   md5 = "b0ff094bd57fd28f4b9361bcec2a316a",
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
