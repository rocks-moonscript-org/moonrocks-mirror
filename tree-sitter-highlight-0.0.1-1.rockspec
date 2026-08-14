rockspec_format = "3.0"
package = "tree-sitter-highlight"
version = "0.0.1-1"

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
	"lua >= 5.1",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/4b6539eccbe9d9a09d6494a0b6d01e7b46e2360d.zip",
	dir = "texrocks-4b6539eccbe9d9a09d6494a0b6d01e7b46e2360d/packages/tree-sitter-highlight",
}

build = {
	type = "rust-mlua",
	modules = {
		["tree_sitter_highlight"] = "tree_sitter_highlight",
	},
}
