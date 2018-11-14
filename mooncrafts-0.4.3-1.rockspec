package = "mooncrafts"
version = "0.4.3-1"
source = {
	url = "git://github.com/niiknow/mooncrafts.git",
	tag = "0.4.3"
}
description = {
	summary = "Network utilities (crafts) written in moonscript",
	homepage = "https://github.com/niiknow/mooncrafts",
	maintainer = "Tom Noogen <friends@niiknow.org>",
	license = "MIT"
}
dependencies = {
	"busted",
	"lua-resty-http",
	"moonscript",
	"basexx",
	"lua-log",
	"lua-cjson",
	"luasocket",
	"ltn12",
	"luaossl"
}
build = {
	type = "builtin",
	modules = {
		["mooncrafts.nginx.accessblock"] = "lib/mooncrafts/nginx/accessblock.lua",
		["mooncrafts.nginx.contentblock"] = "lib/mooncrafts/nginx/contentblock.lua",
		["mooncrafts.nginx.initblock"] = "lib/mooncrafts/nginx/initblock.lua",
		["mooncrafts.resty.cname"] = "lib/mooncrafts/resty/cname.lua",
		["mooncrafts.resty.config"] = "lib/mooncrafts/resty/config.lua",
		["mooncrafts.resty.http"] = "lib/mooncrafts/resty/http.lua",
		["mooncrafts.resty.liquid"] = "lib/mooncrafts/resty/liquid.lua",
		["mooncrafts.resty.router"] = "lib/mooncrafts/resty/router.lua",
		["mooncrafts.resty.routercache"] = "lib/mooncrafts/resty/routercache.lua",
		["mooncrafts.vendor.liquid"] = "lib/mooncrafts/vendor/liquid.lua",
		["mooncrafts.asynclogger"] = "lib/mooncrafts/asynclogger.lua",
		["mooncrafts.awsauth"] = "lib/mooncrafts/awsauth.lua",
		["mooncrafts.azauth"] = "lib/mooncrafts/azauth.lua",
		["mooncrafts.aztable"] = "lib/mooncrafts/aztable.lua",
		["mooncrafts.crypto"] = "lib/mooncrafts/crypto.lua",
		["mooncrafts.date"] = "lib/mooncrafts/date.lua",
		["mooncrafts.hmacauth"] = "lib/mooncrafts/hmacauth.lua",
		["mooncrafts.http"] = "lib/mooncrafts/http.lua",
		["mooncrafts.httpsocket"] = "lib/mooncrafts/httpsocket.lua",
		["mooncrafts.log"] = "lib/mooncrafts/log.lua",
		["mooncrafts.oauth1"] = "lib/mooncrafts/oauth1.lua",
		["mooncrafts.parallel"] = "lib/mooncrafts/parallel.lua",
		["mooncrafts.remotefs"] = "lib/mooncrafts/remotefs.lua",
		["mooncrafts.remoteresolver"] = "lib/mooncrafts/remoteresolver.lua",
		["mooncrafts.requestbuilder"] = "lib/mooncrafts/requestbuilder.lua",
		["mooncrafts.sandbox"] = "lib/mooncrafts/sandbox.lua",
		["mooncrafts.url"] = "lib/mooncrafts/url.lua",
		["mooncrafts.util"] = "lib/mooncrafts/util.lua"
	}
}
