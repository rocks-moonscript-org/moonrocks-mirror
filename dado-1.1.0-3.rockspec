package = "Dado"

version = "1.1.0-3"

description = {
   summary = "Database Facilities for LuaSQL",
   detailed = [[
      Dado is a package that offers some facilities implemented over LuaSQL
      connection objects. Its main goals are: better error messages, iterators
      to access the result set and more homogeneity in some commonly used
      database operations.
   ]]
}

dependencies = {
   "lua >= 5.1"
   -- no specific version of LuaSQL can be pinned down as a dependency,
   -- since Dado can load any LuaSQL driver at runtime.
}

source = {
   url = "http://luaforge.net/frs/download.php/4274/dado-1.1.0.tar.gz",
   md5 = "2f9aea751230f539378248cf0bd8afe8",
}

build = {
	type = "builtin",
	modules = {
		dado = "src/dado.lua",
		["dado.sql"] = "src/dado/sql.lua",
		["dado.object"] = "src/dado/object.lua",
		["string.extra"] = "src/string/extra.lua",
		["table.extra"] = "src/table/extra.lua",
	},
}
