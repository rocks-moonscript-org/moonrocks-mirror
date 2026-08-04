rockspec_format = "3.0"
package = "lux-lsp"
version = "0.40.0-1"

description = {
	maintainer = "vhyrro",
}

dependencies = {
	"lua>=5.1",
}

build_dependencies = {
	"luarocks-build-rust-binary",
}

source = {
	url = "https://github.com/lumen-oss/lux/archive/refs/tags/lux-lsp-v0.40.0.zip",
}

build = {
	type = "rust-binary",
    binary = "lux-lsp@0.40.0"
}
