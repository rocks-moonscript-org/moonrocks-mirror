package = "luaWebs"
version = "0.1-1"
source = {
	url = "git://github.com/LennyPenny/luaWebs",
	tag = "v0.1"
}

description = {
	summary = "Bare-bones http api-server",
	detailed = [[
		tdb
	]],
	homepage = "tbd",
	license = "Apache v2"
}

dependencies = {
	"luv"
}

build = {
	type = "builtin",
	
	modules = {
		luaWebs = "src/luaWebs.lua",
		["luaWebs.http-codec"] = "src/luaWebs/http-codec.lua",
		["luaWebs.url"] = "src/luaWebs/url.lua",
		["luaWebs.querystring"] = "src/luaWebs/querystring.lua"
	}
}