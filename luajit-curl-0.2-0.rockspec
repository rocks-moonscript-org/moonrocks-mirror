package = "luajit-curl"
version = "0.2-0"
source = {
	url = "https://bitbucket.org/senanetworksinc/luajit-curl/raw/0f8fabe643ad0db0e37103e5142c67120df4944b/luajit-curl-0.2-0.tar.gz",
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
