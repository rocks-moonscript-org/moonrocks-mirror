rockspec_format = "3.0"
package = "texcat"
version = "0.3.14-16"

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
	"rocks-treesitter.nvim>=1.3.0",
	"lua-cjson>=0.0.1",
	"tree-sitter-highlight>=0.0.2",
	"vim>=0.0.4",
	"vscode-extensions>=1.102.3",
	"luafilesystem==1.9.0",
	"argparse>=0.7.1",
	"luaposix>=36.3",
	"platformdirs>=0.2.12",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/ebf7a804573ab26ab4c1d324819d0be62be56975.zip",
	dir = "texrocks-ebf7a804573ab26ab4c1d324819d0be62be56975/packages/texcat",
}

build = {
	type = "builtin",
}
