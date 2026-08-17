rockspec_format = "3.0"
package = "texcat"
version = "0.3.14-18"

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
	"lua-cjson>=0.0.1",
	"luaposix>=36.3",
	"platformdirs>=0.2.12",
	"tree-sitter-highlight>=0.0.2",
	"argparse>=0.7.1",
	"rocks-treesitter.nvim>=1.3.0",
	"vim>=0.0.4",
	"vscode-extensions>=1.102.3",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/1e1fb47745f8ad19728c0d7adb7214805e282bc6.zip",
	dir = "texrocks-1e1fb47745f8ad19728c0d7adb7214805e282bc6/packages/texcat",
}

build = {
	type = "builtin",
}
