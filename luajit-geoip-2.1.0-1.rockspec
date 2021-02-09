package = "luajit-geoip"
version = "2.1.0-1"

source = {
  url = "git://github.com/leafo/luajit-geoip.git",
	branch = "v2.1.0"
}

description = {
  summary = "LuaJIT bindings to MaxMind GeoIP library",
  license = "MIT",
  maintainer = "Leaf Corcoran <leafot@gmail.com>",
}

dependencies = {
  "lua ~> 5.1",
}

build = {
  type = "builtin",
  modules = {
		["geoip"] = "geoip/init.lua",
		["geoip.mmdb"] = "geoip/mmdb.lua",
		["geoip.version"] = "geoip/version.lua",
  }
}
