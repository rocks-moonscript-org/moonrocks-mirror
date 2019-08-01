package = "luajit-curl"
version = "1.1-0"
source = {
	url = "https://bitbucket.org/senanetworksinc/luajit-curl/raw/e55f7975b969e27cb1608cc1d724d54b0c4deda1/luajit-curl-1.1-0.tar.gz",
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
		["luajit-curl-helper.ftp"] = "./luajit-curl-helper/ftp.lua",
		["luajit-curl-helper.http"] = "./luajit-curl-helper/http.lua",
		["luajit-curl-helper.init"] = "./luajit-curl-helper/init.lua",
		["luajit-curl-helper.sftp"] = "./luajit-curl-helper/sftp.lua",
	},
}
