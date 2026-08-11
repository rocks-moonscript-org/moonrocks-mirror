rockspec_format = "3.0"
package = "rsre-lua"
version = "0.3.6-1"

description = {
	summary = "a regex lua module using the fancy-regex rust crate",
	license = "MIT",
	homepage = "https://github.com/benniekiss/rs-mod-lua",
	issues_url = "https://github.com/benniekiss/rs-mod-lua/issues",
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
	url = "https://github.com/benniekiss/rs-mod-lua/archive/refs/tags/rsre-lua-v0.3.6.zip",
	dir = "rs-mod-lua-rsre-lua-v0.3.6/crates/rsre-lua",
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
