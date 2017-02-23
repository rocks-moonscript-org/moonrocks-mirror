package = "Dado"

version = "1.8.0-1"

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
   url = "http://www.ccpa.puc-rio.br/software/dado/download/dado-1.8.0.tar.gz",
   md5 = "fb40ecae0eba80e0ff91f30d4f0392bf",
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
