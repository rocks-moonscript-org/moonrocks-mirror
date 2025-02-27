package = "reql-lua"
version = "1.0-0"

source = {
	url = "git+https://github.com/omega-three/rethinkdb"
}

description = {
	summary = "A Lua driver for RethinkDB.",
	detailed = "",
	homepage = "https://github.com/omega-three/rethinkdb",
	license = "MIT"
}

dependencies = {
   "lua >= 5.1, < 5.5",
   "lua-cjson",
   "base64",
   "luaposix",
   "luaossl"
}

build = {
	type = "builtin",
	modules = {
		["reql-lua.rethinkdb"] = "reql-lua/rethinkdb.lua",
		["reql-lua.bitwise"] = "reql-lua/bitwise.lua",
		["reql-lua.connection"] = "reql-lua/connection.lua",
		["reql-lua.cursor"] = "reql-lua/cursor.lua",
		["reql-lua.proto-def"] = "reql-lua/proto-def.lua",
		["reql-lua.protocol"] = "reql-lua/protocol.lua",
		["reql-lua.reql"] = "reql-lua/reql.lua"
	}
}