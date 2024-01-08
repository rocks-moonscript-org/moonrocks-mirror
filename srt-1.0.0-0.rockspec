package = "srt"
version = "1.0.0-0"
source = {
	url = "https://github.com/alejandro-alzate/srt-lua",
	tag = "luarocks-lastest",
}
description = {
	summary = "A pure lua SubRip (SRT) file parser.",
	detailed = [[
		srt.lua is a simple enough crappy implementation
		for reading captions files with the format .srt
	]],
	homepage = "http://...",
	license = "MIT",
}
dependencies = {
	"lua >= 5.1, < 5.4",
	-- If you depend on other rocks, add them here
}
build = {
	type = "builtin",
	modules = {
		srt = "srt.lua",
	},
}