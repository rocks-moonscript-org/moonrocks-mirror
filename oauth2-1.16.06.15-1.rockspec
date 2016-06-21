package = "oauth2"
version = "1.16.06.15-1"
source = {
	url = "git://github.com/aryajur/oauth2",
	tag = "1.16.06"
}
description = {
	summary = "To provide API to connect and use services secured by the oAuth 2.0 protocol using Lua.",
	detailed = [[
		This is a simple module that provides oAuth 2.0 protocol connectivity my managing the access token and providing a easy API to make requests without worrying about managing and refreshing the oAuth 2.0 access tokens.
	]],
	homepage = "http://milindsweb.amved.com/oauth2.html", 
	license = "MIT" 
}
dependencies = {
	"lua >= 5.2",
	"net-url >= 0.9-1",
	"luajson = scm-4",
	"luasec = scm-1"
}
build = {
	type = "builtin",
	modules = {
		many2one = "src/oauth2.lua"
	}
}