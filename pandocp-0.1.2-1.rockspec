rockspec_format = "3.0"
package = "pandocp"
version = "0.1.2-1"

description = {
	summary = "A lua REPL for pandoc",
	license = "GPL-3.0-only",
	homepage = "https://github.com/wakatime/prompt-style.lua/tree/main/packages/pandocp",
	maintainer = "Wu",
	labels = {
		"pandoc",
	},
}

dependencies = {
	"lua>=5.1",
	"prompt-style>=0.1.1",
}

source = {
	url = "https://github.com/wakatime/prompt-style.lua/archive/91e2d9799c28ca77779f71c8260b8380e575caa6.zip",
	dir = "prompt-style.lua-91e2d9799c28ca77779f71c8260b8380e575caa6/packages/pandocp",
}

deploy = {
	wrap_bin_scripts = false,
}

build = {
	type = "builtin",
}
