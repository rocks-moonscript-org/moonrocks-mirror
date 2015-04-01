package = "lluver"
version = "0.1-2"
source = {
	url = "git://github.com/LennyPenny/lluver",
	tag = "v0.11"
}

description = {
	summary = "Simple api server based on libuv",
	detailed = [[
		Simple api server based on libuv
	]],
	homepage = "github.com/LennyPenny/lluver",
	license = "Apache v2"
}

dependencies = {
	"lluv"
}

build = {
	type = "builtin",
	
	modules = {
		lluver = "src/lluver.lua",
		["lluver.http-codec"] = "src/lluver/http-codec.lua",
		["lluver.url"] = "src/lluver/url.lua",
		["lluver.querystring"] = "src/lluver/querystring.lua"
	}
}