rockspec_format = "3.0"
package = "lux-lsp"
version = "0.39.6-1"

description = {
	maintainer = "vhyrro",
}

dependencies = {
	"lua>=5.1",
}

source = {
	url = "https://github.com/lumen-oss/lux/archive/refs/tags/lux-lsp-v0.39.6.zip",
}

build = {
	type = "rust-binary",
    binary = "lux-lsp@0.39.6",
	copy_directories = {
		"bin",
	},
}
