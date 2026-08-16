rockspec_format = "3.0"
package = "texcat"
version = "0.3.14-7"

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
	"vim>=0.0.4",
	"luaposix>=36.3",
	"rocks-treesitter.nvim>=1.3.0",
	"tree-sitter-highlight>=0.0.2",
	"platformdirs>=0.2.12",
	"argparse>=0.7.1",
	"vscode-extensions>=1.102.3",
	"lua-cjson>=0.0.1",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/241a3540df3ac4833614fb6659090eec3caa6b6f.zip",
	dir = "texrocks-241a3540df3ac4833614fb6659090eec3caa6b6f/packages/texcat",
}

build = {
	type = "builtin",
}
