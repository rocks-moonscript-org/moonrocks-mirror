package = "luakuroshiro"
version = "0.3-0"
source = {
	url = "https://bitbucket.org/senanetworksinc/luakuroshiro/raw/5ef750f984891ed1b880aa361729d477bac1dc8f/luakuroshiro-0.3-0.tar.gz",
}
description = {
	summary = "An kuroshiro porting.",
	detailed = [[
		"kuroshiro" porting for lua
		https://github.com/hexenq/kuroshiro
	]],
	homepage = "https://bitbucket.org/senanetworksinc/luakuroshiro",
	license = "MIT/X11"
}
dependencies = {
	"penlight >= 1.5.4-1",
	"luautf8 >= 0.1.1-1",
	"regex >= 0.1.0-1",
}
build = {
	type = "builtin",
	modules = {
		["kuroshiro.kuroshiro-analyzer-mecab-dlink"] = "kuroshiro/kuroshiro-analyzer-mecab-dlink.lua",
		["kuroshiro.kuroshiro-analyzer-mecab"] = "kuroshiro/kuroshiro-analyzer-mecab.lua",
		["kuroshiro.kuroshiro"] = "kuroshiro/kuroshiro.lua",
		["kuroshiro.test"] = "kuroshiro/test.lua",
		["kuroshiro.util"] = "kuroshiro/util.lua",
	},
}
