-- Luarocks rockspec details
package = "kong-plugin-maxmind-geoip2"
version = "0.1.0-0"
supported_platforms = {"linux", "macosx"}
source = {
	url = "git://github.com/thomasgriffin/kong-plugin-maxmind-geoip2",
}
description = {
	summary = "Kong plugin that utilizes the NGINX geoip2 module and passes location headers based on results from a Maxmind database and associated IP address.",
	license = "MIT"
}
local pluginName = "maxmind-geoip2"
build = {
	type = "builtin",
	modules = {
		["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
		["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua"
	}
}