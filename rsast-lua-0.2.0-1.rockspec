rockspec_format = "3.0"
package = "rsast-lua"
version = "0.2.0-1"

description = {
	summary = "a PEG lua module using the pest rust crate",
	license = "MIT",
	homepage = "https://github.com/benniekiss/rs-mod-lua",
	issues_url = "https://github.com/benniekiss/rs-mod-lua/issues",
	maintainer = "benniekiss",
	labels = {
		"ast",
		"PEG",
		"parsing",
		"rust",
	},
}

dependencies = {
	"lua>=5.1",
}

build_dependencies = {
	"luarocks-build-rust-mlua>=0.2.6",
}

source = {
	url = "https://github.com/benniekiss/rs-mod-lua/archive/refs/tags/rsast-lua-v0.2.0.zip",
	dir = "rs-mod-lua-rsast-lua-v0.2.0/crates/rsast-lua",
}

build = {
	type = "rust-mlua",
	modules = {
		rsast = "rsast_lua",
	},
	default_features = false,
	features = {
		"module",
	},
	include = {
		["library/rsast.d.lua"] = "rsast.d.lua",
	},
}
