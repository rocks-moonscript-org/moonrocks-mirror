package = "mooncrafts"
version = "0.3.0-1"
source = {
	url = "git://github.com/niiknow/mooncrafts.git",
	tag = "0.3.0"
}
description = {
	summary = "Network utilities (crafts) written in moonscript",
	homepage = "https://github.com/niiknow/mooncrafts",
	maintainer = "Tom Noogen <friends@niiknow.org>",
	license = "MIT"
}
dependencies = {
	"busted",
	"lua-resty-jwt",
	"lua-resty-http",
	"moonscript",
	"luacrypto",
	"basexx",
	"lua-log",
	"lua-cjson",
	"luasocket",
	"ltn12",
	"luasec"
}
build = {
	type = "builtin",
	modules = {
		["mooncrafts.asynclogger"] = "lib/mooncrafts/asynclogger.lua",
		["mooncrafts.awsauth"] = "lib/mooncrafts/awsauth.lua",
		["mooncrafts.azauth"] = "lib/mooncrafts/azauth.lua",
		["mooncrafts.crypto"] = "lib/mooncrafts/crypto.lua",
		["mooncrafts.date"] = "lib/mooncrafts/date.lua",
		["mooncrafts.hmacauth"] = "lib/mooncrafts/hmacauth.lua",
		["mooncrafts.http"] = "lib/mooncrafts/http.lua",
		["mooncrafts.httpsocket"] = "lib/mooncrafts/httpsocket.lua",
		["mooncrafts.log"] = "lib/mooncrafts/log.lua",
		["mooncrafts.oauth1"] = "lib/mooncrafts/oauth1.lua",
		["mooncrafts.remoteresolver"] = "lib/mooncrafts/remoteresolver.lua",
		["mooncrafts.sandbox"] = "lib/mooncrafts/sandbox.lua",
		["mooncrafts.url"] = "lib/mooncrafts/url.lua",
		["mooncrafts.util"] = "lib/mooncrafts/util.lua"
	}
}
