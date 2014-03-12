package = "Dado"

version = "1.2.0-0"

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
   url = "http://luaforge.net/frs/download.php/4588/dado-1.2.0.tar.gz",
   md5 = "c32df33c8a4b6d364d72f084f3a144e4",
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
