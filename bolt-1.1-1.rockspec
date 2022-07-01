package = "bolt"
version = "1.1-1"
source = {
	url = "git+ssh://git@github.com/stefanak-michal/lua-neo4j.git",
	tag = "v1.1"
}
description = {
	summary = "Unofficial library for communication with Neo4j database over bolt tcp protocol.",
	detailed = [[
		Optional support for SSL with LuaSec.
	]],
	homepage = "https://github.com/stefanak-michal/lua-neo4j",
	license = "MIT"
}
dependencies = {
	"lua >= 5.3",
	"luasocket"
}
build = {
	type = "builtin",
	modules = {
		bolt = "src/bolt.lua",
		connection = "src/connection.lua",
		packer = "src/packer.lua",
		unpacker = "src/unpacker.lua",
		structures = "src/structures.lua"
	},
	copy_directories = { "tests" }
}
