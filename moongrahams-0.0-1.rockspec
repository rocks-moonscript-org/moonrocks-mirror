package = "moongrahams"
version = "0.0-1"
source = {
	url = "git://github.com/zach-binary/moon-grahams.git"
}
description = {
	summary = " lua/moonscript library for performing bayesian analysis",
	detailed = [[
		Using moon-grahams you can perform bayesian analysis on a body of text
		to test what kind of sentiment that text will present.  For example, 
		you can test on a blog if someone is writing about video games vs writing
		about dieting products
	]],
	homepage = "https://github.com/zach-binary/moon-grahams",
	maintainer = "Zach Burke <madutilitybelt@gmail.com>",
	license = "MIT"
}
dependencies = {
	"lua >= 5.1"
}
build = {
	type = "builtin",
	modules = {
		["moongrahams"] = "moongrahams/init.lua"
	}
}