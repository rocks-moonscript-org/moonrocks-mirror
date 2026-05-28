rockspec_format = "3.0"
package = "texcat"
version = "0.3.13-1"

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
	"argparse >= 0.7.1",
	"nvim-textmate >= 0.0.1",
	"vscode-extensions >= 1.102.3",
	"warna >= 0.3.5",
	"luafilesystem >= 1.9.0",
	"texrocks >= 0.3.13",
	"lua-template >= 1.0.0",
	"ltreesitter >= 0.1.0",
	"vim >= 0.0.4",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/b8c5d4780d4003b532b8c51daa1a7ff21c0e2c39.zip",
	dir = "texrocks-b8c5d4780d4003b532b8c51daa1a7ff21c0e2c39/packages/texcat",
}

build = {
	type = "builtin",
}
