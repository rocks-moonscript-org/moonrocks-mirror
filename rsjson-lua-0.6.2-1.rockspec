rockspec_format = "3.0"
package = "rsjson-lua"
version = "0.6.2-1"

description = {
	summary = "a json lua module using the serde-json rust crate",
	license = "MIT",
	homepage = "https://github.com/benniekiss/rs-mod-lua",
	issues_url = "https://github.com/benniekiss/rs-mod-lua/issues",
	maintainer = "benniekiss",
	labels = {
		"json",
		"rust",
		"bindings",
	},
}

dependencies = {
	"lua>=5.1",
}

build_dependencies = {
	"luarocks-build-rust-mlua>=0.2.6",
}

source = {
	url = "https://github.com/benniekiss/rs-mod-lua/archive/refs/tags/rsjson-lua-v0.6.2.zip",
	dir = "rs-mod-lua-rsjson-lua-v0.6.2/crates/rsjson-lua",
}

build = {
	type = "rust-mlua",
	modules = {
		rsjson = "rsjson_lua",
	},
	default_features = false,
	features = {
		"module",
	},
	include = {
		["library/rsjson.d.lua"] = "rsjson.d.lua",
	},
}
