rockspec_format = "3.0"
package = "grapheme"
version = "master-1"
source = {
	url = "gitrec+https://codeberg.org/nazrin/grapheme"
}
supported_platforms = { "unix", "linux", "freebsd" }
description = {
	summary = "Binding to libgrapheme, a light and fast Unicode/UTF-8 library",
	homepage = "https://codeberg.org/nazrin/grapheme",
	license = "MPL-2.0",
	issues_url = "https://codeberg.org/nazrin/grapheme/issues",
}
dependencies = {
	"lua >= 5.1",
	"luarocks-fetch-gitrec"
}
build_dependencies = {
}
build = {
	type = "make",
	install_pass = false,
	install = {
		lib = { ["grapheme"] = "./grapheme.so" }
	}
}

