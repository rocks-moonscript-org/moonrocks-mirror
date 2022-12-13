package = "bolt"
version = "1.2-1"
source = {
	url = "git+ssh://git@github.com/stefanak-michal/lua-neo4j.git",
	tag = "v1.2"
}
description = {
	summary = "Bolt protocol library for communication with graph databases.",
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
