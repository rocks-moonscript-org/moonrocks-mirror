rockspec_format = "3.1"
package = "jsonschema-lua"
version = "0.1.0-1"

description = {
	summary = "a json schema validation lua module using the jsonschema rust crate",
	license = "MIT",
	homepage = "https://github.com/benniekiss/rs-mod-lua",
	issues_url = "https://github.com/benniekiss/rs-mod-lua/issues",
	maintainer = "benniekiss",
	labels = {
		"json schema",
		"json",
		"validator",
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
	url = "https://github.com/benniekiss/rs-mod-lua/archive/refs/tags/jsonschema-lua-v0.1.0.zip",
	dir = "rs-mod-lua-jsonschema-lua-v0.1.0",
}

build = {
	type = "rust-mlua",
	modules = {
		jsonschema = "jsonschema_lua",
	},
	default_features = false,
	features = {
		"module",
	},
	cargo_extra_args = {
		"--package",
		"jsonschema-lua",
		"--locked",
	},
	include = {
		["crates/rs-mod-lua-core/library/rs_mod_lua_core.d.lua"] = "rs_mod_lua_core.d.lua",
		["crates/jsonschema-lua/library/jsonschema.d.lua"] = "jsonschema.d.lua",
	},
}
