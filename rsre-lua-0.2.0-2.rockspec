rockspec_format = "3.0"
package = "rsre-lua"
version = "0.2.0-2"

description = {
	summary = "a lua regex module using `fancy-regex` via `mlua`",
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
	url = "https://github.com/benniekiss/rsre-lua/archive/refs/tags/v0.2.0.zip",
}

build = {
	type = "rust-mlua",
	modules = {
		rsre = "rsre_lua",
	},
	copy_directories = {
		"library",
	},
	default_features = false,
	features = {
		"module",
	},
	include = {
		["library/rsre.d.lua"] = "rsre.d.lua",
	},
}
