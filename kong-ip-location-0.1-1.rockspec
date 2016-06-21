package = "kong-ip-location"
version = "0.1-1"

source = {
  url = "https://github.com/ismailbaskin/kong-ip-location/archive/v0.1.zip",
  dir = "kong-ip-location-0.1"
}

description = {
	summary = "Detect location depends on Maxmind geolite database",
	license = "Apache2",
}

dependencies = {
	"lua >= 5.1",
	"luabitop",
	"struct",
}

build = {
	type = "builtin",
	modules = {
		["mmdb"]     = "src/mmdblua.lua",
        ["kong.plugins.kong-ip-location.api"] = "src/api.lua",
        ["kong.plugins.kong-ip-location.handler"] = "src/handler.lua",
        ["kong.plugins.kong-ip-location.schema"] = "src/schema.lua",
	},
}