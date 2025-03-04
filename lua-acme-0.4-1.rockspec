package = "lua-acme"
version = "0.4-1"
source = {
	url = "hg+http://code.zash.se/lua-acme",
	tag = "0.4"
}
description = {
	homepage = "http://code.zash.se/lua-acme",
	license = "MIT"
}
dependencies = {
	"lua-jwc",
	"luasocket",
	"luaossl",
	"lua-cjson",
}
build = {
	type = "builtin",
	modules = {
		["acme.account"] = "account.lua",
		["acme.challenge.http-01"] = "challenge.http-01.lua",
		["acme.challenge.dns-01"] = "challenge.dns-01.lua",
		["acme.datautil"] = "datautil.lua",
		["acme.error"] = "error.lua",
	},
	install = {
		bin = {
			"luacme"
		}
	},
}
