rockspec_format = "3.0"
package = "lua-toml-edit"
version = "0.2.7-1"

source = {
	url = "git+https://github.com/realhonbo/lua-toml-edit.git",
	tag = "v0.2.7",
}

description = {
	summary = "Lua native module for format-preserving TOML edits",
	detailed = [[
		A Lua binding to the Rust `toml_edit` crate. It parses TOML while
		preserving the original formatting, comments, and key order, and lets
		you get/set/remove values by dotted path or path array, then serialize
		the document back to a string with edits applied in place.
	]],
	homepage = "https://github.com/realhonbo/lua-toml-edit",
	license = "MIT",
	labels = { "toml", "toml-edit", "config" },
}

dependencies = {
	"lua >= 5.1, < 5.5",
}

build_dependencies = {
	"luarocks-build-rust-mlua",
}

build = {
	type = "rust-mlua",

	modules = {
		["toml_edit"] = "toml_edit",
	},
	default_features = false,
}
