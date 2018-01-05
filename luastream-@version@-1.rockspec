package = "luastream"
version = "@VERSION@-1"

source = {
	url = "git://github.com/armanneysi89/luastream.git",
	tag="@VERSION@"
}
description = {
	summary = "HBM streamingclient for lua",
	homepage = "http://github.com/armanneysi89/luastream.git",
	license = "MIT/X11",
	detailed = ""
}

dependencies = {
	"lua >= 5.1",
	"luasocket",
	"inspect",
	"lanes",
	"lua-cjson",
}
