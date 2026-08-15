rockspec_format = "3.0"
package = "texcat"
version = "0.3.14-4"

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
	"luaposix >= 36.3",
	"platformdirs >= 0.2.12",
	"vim >= 0.0.4",
	"rocks-treesitter.nvim >= 1.3.0",
	"vscode-extensions >= 1.102.3",
	"argparse >= 0.7.1",
	"lua-cjson >= 0.0.1",
	"tree-sitter-highlight >= 0.0.2",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/3f386439427bf8d62cb221f19c4fdcd4e4fe79c9.zip",
	dir = "texrocks-3f386439427bf8d62cb221f19c4fdcd4e4fe79c9/packages/texcat",
}

build = {
	type = "builtin",
}
