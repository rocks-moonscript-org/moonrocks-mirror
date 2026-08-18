rockspec_format = "3.0"
package = "texcat"
version = "0.3.14-19"

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
	"argparse>=0.7.1",
	"tree-sitter-highlight>=0.0.2",
	"vscode-extensions>=1.102.3",
	"rocks-treesitter.nvim>=1.3.0",
	"lua-cjson>=0.0.1",
	"luaposix>=36.3",
	"vim>=0.0.4",
	"platformdirs>=0.2.12",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/aff4a7b4aa7c906f23ea90c3b986fd4a2346564c.zip",
	dir = "texrocks-aff4a7b4aa7c906f23ea90c3b986fd4a2346564c/packages/texcat",
}

build = {
	type = "builtin",
}
