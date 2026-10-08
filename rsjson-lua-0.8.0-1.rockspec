rockspec_format = "3.0"
package = "rsjson-lua"
version = "0.8.0-1"

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
	url = "https://github.com/benniekiss/rs-mod-lua/archive/refs/tags/rsjson-lua-v0.8.0.zip",
	dir = "rs-mod-lua-rsjson-lua-v0.8.0",
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
	cargo_extra_args = {
		"--package",
		"rsjson-lua",
		"--locked",
	},
	include = {
		["crates/rs-mod-lua-core/library/rs_mod_lua_core.d.lua"] = "rs_mod_lua_core.d.lua",
		["crates/rsjson-lua/library/rsjson.d.lua"] = "rsjson.d.lua",
	},
}
