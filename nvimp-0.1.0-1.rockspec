rockspec_format = "3.0"
package = "nvimp"
version = "0.1.0-1"

description = {
	summary = "A lua REPL for neovim",
	license = "GPL-3.0-only",
	maintainer = "Wu",
	labels = {
		"neovim",
	},
}

dependencies = {
	"lua >= 5.1",
	"prompt-style >= 0.1.0",
}

source = {
	url = "https://github.com/wakatime/prompt-style.lua/archive/0.1.0.zip",
	dir = "prompt-style.lua-0.1.0/packages/nvimp",
}

deploy = {
	wrap_bin_scripts = false,
}

build = {
	type = "builtin",
}
