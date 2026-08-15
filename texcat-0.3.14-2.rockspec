rockspec_format = "3.0"
package = "texcat"
version = "0.3.14-2"

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
	"lua >= 5.1",
	"vim >= 0.0.4",
	"rocks-treesitter.nvim >= 1.3.0",
	"lua-cjson >= 0.0.1",
	"argparse >= 0.7.1",
	"vscode-extensions >= 1.102.3",
	"platformdirs >= 0.2.12",
	"tree-sitter-highlight >= 0.0.2",
	"luaposix >= 36.3",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/fb495cead1a7cf913cfb0bae7b50b0a139cd1c45.zip",
	dir = "texrocks-fb495cead1a7cf913cfb0bae7b50b0a139cd1c45/packages/texcat",
}

build = {
	type = "builtin",
}
