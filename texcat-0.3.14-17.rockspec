rockspec_format = "3.0"
package = "texcat"
version = "0.3.14-17"

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
	url = "https://github.com/ustctug/texrocks/archive/7916f5a39038e6cd0165674d823da9ab39e54f6b.zip",
	dir = "texrocks-7916f5a39038e6cd0165674d823da9ab39e54f6b/packages/texcat",
}

build = {
	type = "builtin",
}
