rockspec_format = "3.0"
package = "neomuttp"
version = "0.1.1-1"

description = {
	summary = "A lua REPL for neomutt",
	license = "GPL-3.0-only",
	homepage = "https://github.com/wakatime/prompt-style.lua/tree/main/packages/neomuttp",
	maintainer = "Wu",
	labels = {
		"neomutt",
	},
}

dependencies = {
	"lua>=5.1",
	"prompt-style>=0.1.1",
}

source = {
	url = "https://github.com/wakatime/prompt-style.lua/archive/0.1.1.zip",
	dir = "prompt-style.lua-0.1.1/packages/neomuttp",
}

deploy = {
	wrap_bin_scripts = false,
}

build = {
	type = "builtin",
}
