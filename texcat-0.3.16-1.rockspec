rockspec_format = "3.0"
package = "texcat"
version = "0.3.16-1"

description = {
	summary = "syntax highlight code in LaTeX",
	detailed = "A reimplementation of https://pygments.org/docs/formatters/#LatexFormatter by texlua",
	license = "GPL-3.0",
	homepage = "https://github.com/sphinx-contrib/tree-sitter-highlight",
	maintainer = "Wu",
	labels = {
		"tex",
	},
}

dependencies = {
	"lua >= 5.1",
	"rocks-treesitter.nvim >= 1.3.0",
	"vim >= 0.0.4",
	"luaposix >= 36.3",
	"tree-sitter-highlight >= 0.0.2",
	"vscode-extensions >= 1.102.3",
	"platformdirs >= 0.2.12",
	"argparse >= 0.7.1",
	"lua-cjson >= 0.0.1",
}

source = {
	url = "https://github.com/sphinx-contrib/tree-sitter-highlight/archive/ff30b25d5abe3ea851b8acf4cb917e3a912aa456.zip",
	dir = "tree-sitter-highlight-ff30b25d5abe3ea851b8acf4cb917e3a912aa456/packages/lua/texcat",
}

build = {
	type = "builtin",
}
