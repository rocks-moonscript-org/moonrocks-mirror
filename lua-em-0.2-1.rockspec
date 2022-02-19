package = "lua-em"
version = "0.2-1"
source = {
	url = "git://github.com/nyankers/lua-em",
	tag = "0.2.1",
}
description = {
	summary = "Sqlite Entity Manager",
	detailed = [[
		An entity manager backed by sqlite3.
	]],
	homepage = "https://github.com/nyankers/lua-em",
	license = "ISC",
}
build = {
	type = "builtin",
	modules = {
		em = "em.lua"
	}
}
dependencies = {
	"lua >= 5.1, < 5.4",
	"lsqlite3 >= 0.9.5",
}
