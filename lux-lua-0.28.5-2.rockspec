rockspec_format = "3.0"
package = "lux-lua"
version = "0.28.5-2"

description = {
	summary = "The Lua API for the lux package manager",
	license = "LGPL-3.0+",
	homepage = "https://lux.lumen-labs.org/",
	issues_url = "https://github.com/lumen-oss/lux/issues",
	maintainer = "Lumen Labs",
	labels = {
		"luarocks",
		"lux",
		"package-manager",
		"packagemanager",
		"build",
	},
}

dependencies = {
	"lua>=5.1, <5.6",
}

build_dependencies = {
	"luarocks-build-rust-mlua>=0.2.6",
}

source = {
	url = "https://github.com/lumen-oss/lux/archive/refs/tags/v0.28.5.zip",
}

build = {
	type = "rust-mlua",
	modules = {
		lux = "lux_lua",
	},
	cargo_extra_args = {
		"--package",
		"lux-lua",
		"--locked",
	},
	features = {
		"vendored",
	},
}
