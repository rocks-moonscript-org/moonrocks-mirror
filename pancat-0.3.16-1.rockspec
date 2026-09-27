rockspec_format = "3.0"
package = "pancat"
version = "0.3.16-1"

description = {
	summary = "syntax highlight code in pandoc",
	detailed = "A reimplementation of https://github.com/jgm/skylighting by tree-sitter",
	license = "GPL-3.0",
	homepage = "https://github.com/sphinx-contrib/tree-sitter-highlight",
	maintainer = "Wu",
	labels = {
		"tex",
	},
}

dependencies = {
	"lua >= 5.1",
	"texcat >= 0.3.16",
}

source = {
	url = "https://github.com/sphinx-contrib/tree-sitter-highlight/archive/ff30b25d5abe3ea851b8acf4cb917e3a912aa456.zip",
	dir = "tree-sitter-highlight-ff30b25d5abe3ea851b8acf4cb917e3a912aa456/packages/lua/pancat",
}

deploy = {
	wrap_bin_scripts = false,
}

build = {
	type = "builtin",
}
