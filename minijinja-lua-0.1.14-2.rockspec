rockspec_format = "3.0"
package = "minijinja-lua"
version = "0.1.14-2"

description = {
	summary = "Lua bindings for minijinja",
	license = "MIT",
	homepage = "https://github.com/benniekiss/minijinja-lua",
	issues_url = "https://github.com/benniekiss/minijinja-lua/issues",
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
	url = "https://github.com/benniekiss/minijinja-lua/archive/refs/tags/v0.1.14.zip",
}

build = {
	type = "rust-mlua",
	modules = {
		minijinja = "minijinja_lua",
	},
	copy_directories = {
		"library",
	},
	default_features = false,
	features = {
		"module",
	},
}
