package = "luakuroshiro"
version = "0.1-0"
source = {
	url = "https://bitbucket.org/senanetworksinc/luakuroshiro/raw/6de475085014eb0cc7298c150d21db107a2e7945/luakuroshiro-0.1-0.tar.gz",
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
