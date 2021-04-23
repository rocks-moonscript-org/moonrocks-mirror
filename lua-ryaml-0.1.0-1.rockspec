package = "lua-ryaml"
version = "0.1.0-1"

source = {
    url = "git+https://github.com/khvzak/lua-ryaml",
    tag = "0.1.0",
}

description = {
    summary = "A fast YAML library written in Rust using serde",
    detailed = [[
        The Lua module written in Rust that provides YAML support for Lua.
        Fast, pure Rust YAML 1.2 implementation using serde framework and yaml-rust parser.
    ]],
    homepage = "https://github.com/khvzak/lua-ryaml",
    license = "MIT"
}

dependencies = {
    "lua >= 5.1",
    "luarocks-build-rust-mlua",
}

build = {
    type = "rust-mlua",
    modules = {
        "ryaml"
    },
}
