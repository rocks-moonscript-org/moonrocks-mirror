package = "luajit-curl"
version = "0.1-0"
source = {
	url = "https://bitbucket.org/senanetworksinc/luajit-curl/raw/5860d239873b18f294baf5d1af4d15486864db3d/luajit-curl-0.1-0.tar.gz",
}
description = {
	summary = "An curl porting.",
	detailed = [[
		"curl" porting for lua
		https://gist.github.com/LPGhatguy/09d3955207ab35d96e97
	]],
	homepage = "https://bitbucket.org/senanetworksinc/luajit-curl",
	license = "MIT/X11"
}
dependencies = {
}
build = {
	type = "builtin",
	modules = {
		["luajit-curl"] = "./luajit-curl.lua",
	},
}
