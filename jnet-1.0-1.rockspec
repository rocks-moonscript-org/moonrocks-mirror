package = "jnet"
version = "1.0-1"

description = {
	summary = "A subnet mangling library",
	homepage = "https://github.com/LBPHacker/lua-jnet",
	license = "MIT"
}

source = {
	url = "git+https://github.com/LBPHacker/lua-jnet.git",
	tag = "v1.0-1"
}

dependencies = {
	"lua >= 5.3",
}

build = {
	type = "builtin",
	modules = {
		["jnet"] = "src/jnet/init.lua",
		["jnet.set"] = "src/jnet/set.lua",
		["jnet.net"] = "src/jnet/net.lua",
		["jnet.check"] = "src/jnet/check.lua",
		["jnet.ipv4"] = "src/jnet/ipv4.lua",
		["jnet.ipv6"] = "src/jnet/ipv6.lua",
		["jnet.util"] = "src/jnet/util.lua",
	}
}
