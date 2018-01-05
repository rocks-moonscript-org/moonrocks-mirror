package = "luastream"
version = "0.1-2"

source = {
	url = "git://github.com/armanneysi89/luastream.git",
}
description = {
	summary = "HBM streamingclient for lua",
	homepage = "http://github.com/armanneysi89/luastream.git",
	license = "MIT/X11",
	detailed = ""
}

dependencies = {
	"lua = 5.1",
	"luasocket",
	"inspect",
	"lanes",
	"lua-cjson",
}
build = {
	type = "builtin",
	modules = {
		streaming = "streaming.lua",
		streaming_message="streaming_message.lua",
		bit = "bit.lua",
		log = "log.lua"
	}
}
