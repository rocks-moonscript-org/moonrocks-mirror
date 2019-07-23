package = "luajit-curl"
version = "0.3-0"
source = {
	url = "https://bitbucket.org/senanetworksinc/luajit-curl/raw/f975573755f037d658f6a16d78ae2290d22a75cb/luajit-curl-0.3-0.tar.gz",
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
		["luajit-curl-helper"] = "./luajit-curl-helper.lua",
	},
}
