package = "lua-resty-vardump"
version = "1.0.2-1"
source = {
	url = "git://github.com/lindowx/lua-resty-vardump",
    tag = "v1.0.2"
}
description = {
	summary = "A debug tool for the Openresty/ngx_lua",
	detailed = [[
		Vardump is a debug tool for the Openresty/ngx_lua that pretty-prints some Lua values.
	]],
	homepage = "https://github.com/lindowx/lua-resty-vardump",
	maintainer = "lindowx",
	license = "MIT"
}
dependencies = {
	"lua >= 5.1"
}
build = {
	type = 'builtin',
	modules = {
		['resty.vardump'] = 'lib/resty/vardump.lua'
	}
}