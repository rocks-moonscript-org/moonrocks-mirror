rockspec_format = "3.0"
package = "prompt-style"
version = "0.1.4-1"

description = {
	summary = "REPL for neovim, luatex, ..., lua plugin for powerlevel10k style prompt and WakaTime time tracking.",
	license = "GPL-3.0",
	homepage = "https://prompt-style-lua.readthedocs.io/",
	labels = {
		"lua",
		"lualatex",
		"luatex",
		"neovim",
		"nerdfont",
		"pandoc",
		"powerlevel10k",
		"prompt",
		"repl",
		"texlua",
		"wakatime",
	},
}

dependencies = {
	"lua>=5.1",
	"luaprompt>=0.10.0, <0.11.0",
	"datafile>=0.11.0, <0.12.0",
	"warna>=0.3.0, <0.4.0",
	"luafilesystem>=1.0.0, <2.0.0",
	"argparse-temp>=0.7.0, <0.8.0",
}

source = {
	url = "https://github.com/wakatime/prompt-style.lua/archive/0.1.4.zip",
}

build = {
	type = "builtin",
}
