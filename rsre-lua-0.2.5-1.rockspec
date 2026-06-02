rockspec_format = "3.0"
package = "rsre-lua"
version = "0.2.5-1"

description = {
	summary = "a regex lua module using the fancy-regex rust crate",
	license = "MIT",
	homepage = "https://github.com/benniekiss/rsre-lua",
	issues_url = "https://github.com/benniekiss/rsre-lua/issues",
	maintainer = "benniekiss",
	labels = {
		"regex",
	},
}

dependencies = {
	"lua>=5.1",
}

build_dependencies = {
	"luarocks-build-rust-mlua>=0.2.6",
}

source = {
	url = "https://github.com/benniekiss/rs-mod-lua/archive/refs/tags/rsre-lua-v0.2.5.zip",
	dir = "rs-mod-lua-rsre-lua-v0.2.5/crates/rsre-lua",
}

build = {
	type = "rust-mlua",
	modules = {
		rsre = "rsre_lua",
	},
	default_features = false,
	features = {
		"module",
	},
	include = {
		["library/rsre.d.lua"] = "rsre.d.lua",
	},
}
