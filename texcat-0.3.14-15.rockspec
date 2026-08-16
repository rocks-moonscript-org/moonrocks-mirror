rockspec_format = "3.0"
package = "texcat"
version = "0.3.14-15"

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
	"argparse>=0.7.1",
	"platformdirs>=0.2.12",
	"vscode-extensions>=1.102.3",
	"luaposix>=36.3",
	"tree-sitter-highlight>=0.0.2",
	"rocks-treesitter.nvim>=1.3.0",
	"vim>=0.0.4",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/d37c8c88f4b7dafe327cec1a0a2e7ee17b4b8c3b.zip",
	dir = "texrocks-d37c8c88f4b7dafe327cec1a0a2e7ee17b4b8c3b/packages/texcat",
}

build = {
	type = "builtin",
}
