rockspec_format = "3.0"
package = "texcat"
version = "0.3.14-6"

description = {
	summary = "syntax highlight code in LaTeX",
	detailed = "A reimplementation of https://pygments.org/docs/formatters/#LatexFormatter by texlua",
	license = "GPL-3.0",
	homepage = "https://texrocks.readthedocs.io/en/latest/topics/texcat.md.html",
	maintainer = "Wu",
	labels = {
		"tex",
	},
}

dependencies = {
	"lua>=5.1",
	"luaposix>=36.3",
	"rocks-treesitter.nvim>=1.3.0",
	"platformdirs>=0.2.12",
	"argparse>=0.7.1",
	"tree-sitter-highlight>=0.0.2",
	"vim>=0.0.4",
	"lua-cjson>=0.0.1",
	"vscode-extensions>=1.102.3",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/ddf24113312f610e3cfbec135e7134309b238768.zip",
	dir = "texrocks-ddf24113312f610e3cfbec135e7134309b238768/packages/texcat",
}

build = {
	type = "builtin",
}
