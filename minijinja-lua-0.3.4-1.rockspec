rockspec_format = "3.0"
package = "minijinja-lua"
version = "0.3.4-1"

description = {
	summary = "a minijinja lua module using the minijinja rust crate",
	license = "MIT",
	homepage = "https://github.com/benniekiss/rs-mod-lua",
	issues_url = "https://github.com/benniekiss/rs-mod-lua/issues",
	maintainer = "benniekiss",
	labels = {
		"jinja",
		"minijinja",
		"template",
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
	url = "https://github.com/benniekiss/rs-mod-lua/archive/refs/tags/minijinja-lua-v0.3.4.zip",
	dir = "rs-mod-lua-minijinja-lua-v0.3.4/crates/minijinja-lua",
}

build = {
	type = "rust-mlua",
	modules = {
		minijinja = "minijinja_lua",
	},
	default_features = false,
	features = {
		"module",
		"contrib",
	},
	include = {
		["library/minijinja.d.lua"] = "minijinja.d.lua",
	},
}
