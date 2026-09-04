rockspec_format = "3.0"
package = "lux-lsp"
version = "0.43.1-2"

description = {
    maintainer = "vhyrro",
}

dependencies = {
    "lua>=5.1",
}

build_dependencies = {
    "luarocks-build-rust-binary >= 4.0.0",
}

source = {
    url = "https://github.com/lumen-oss/lux/archive/refs/tags/lux-lsp-v0.43.1.zip",
}

build = {
    type = "rust-binary",
    package = "lux-lsp",
    copy_directories = { "bin" }
}

