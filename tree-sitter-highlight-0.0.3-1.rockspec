rockspec_format = "3.0"
package = "tree-sitter-highlight"
version = "0.0.3-1"

description = {
	summary = "lua binding for tree-sitter-highlight",
	license = "GPL-3.0-only",
	homepage = "https://texrocks.readthedocs.io/en/latest/topics/tree-sitter-highlight.md.html",
	maintainer = "Wu",
	labels = {
		"highlight",
	},
}

dependencies = {
	"lua>=5.1",
}

build_dependencies = {
	"luarocks-build-rust-mlua>=0.2.6",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/fb495cead1a7cf913cfb0bae7b50b0a139cd1c45.zip",
	dir = "texrocks-fb495cead1a7cf913cfb0bae7b50b0a139cd1c45/packages/tree-sitter-highlight",
}

build = {
	type = "rust-mlua",
	modules = {
		tree_sitter_highlight = "tree_sitter_highlight",
	},
}
