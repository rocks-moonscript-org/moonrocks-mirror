package = "lua-ljson"
version = "0.1.0-1"

source = {
    url = "git+https://github.com/rusty-sec/ljson",
    tag = "0.1.0",
}

description = {
    summary = "A fast Lua JSON library written in Rust for Lotus Project",
    detailed = [[
        Lua module that has been developed in Rust to provide JSON support for Lua. The module uses a fast and pure Rust JSON implementation which is based on the serde framework. It has been created specifically for Lotus Project (available at https://github.com/rusty-sec/lotus) as an additional library.
    ]],
    homepage = "https://github.com/rusty-sec/ljson",
    license = "GPL2"
}

dependencies = {
    "lua >= 5.1",
    "luarocks-build-rust-mlua",
}

build = {
    type = "rust-mlua",
    modules = {
        "ljson"
    },
}
