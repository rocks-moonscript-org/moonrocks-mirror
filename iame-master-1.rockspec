rockspec_format = "3.0"
package = "iame"
version = "master-1"
source = {
	url = "git+https://codeberg.org/nazrin/iame"
}
description = {
	summary = "Evals mathematical expressions without actually evaling code",
	homepage = "https://codeberg.org/nazrin/iame",
	license = "GPL-v3",
	issues_url = "https://codeberg.org/nazrin/iame/issues"
}
dependencies = {
	"lua >= 5.1",
	"regex >= 0.1.0-1",
}
build = {
	type = "builtin",
	install = {
		lua = {
			["iame"] = "./iame.lua",
		}
	},
}

