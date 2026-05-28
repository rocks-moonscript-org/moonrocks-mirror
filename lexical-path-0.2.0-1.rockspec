rockspec_format = "3.0"
package = "lexical-path"
version = "0.2.0-1"
source = {
	url = "git+https://codeberg.org/euclidianAce/lexical-path.git",
	tag = "v0.2.0",
}
description = {
	summary = "Lexical/logical path management",
	detailed = "An attempt at an abstract Path type that allows for basic things to be made cross platform",
	homepage = "https://codeberg.org/euclidianAce/lexical-path",
	license = "CC0",
	issues_url = "https://codeberg.org/euclidianAce/lexical-path/issues",
}
dependencies = {
	"lua >= 5.1",
}
build = {
	type = "builtin",
	modules = {
		["lexical-path"] = "build/lexical-path.lua",
	},
	install = {
		lua = {
			["lexical-path"] = "src/lexical-path.tl",
		}
	},
}
