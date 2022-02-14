package = "squall-router"
version = "0.1.1-1"

source = {
    url = "git+https://github.com/mtag-dev/lua-squall-router",
    tag = "0.1.1",
}

description = {
    summary = "Lua binding for Squall routing subsystem",
    detailed = [[
        The Lua module written in Rust that provides http routing support for Lua.
    ]],
    homepage = "https://github.com/mtag-dev/lua-squall-router",
    license = "MIT"
}

dependencies = {
    "lua >= 5.1",
    "luarocks-build-rust-mlua",
}

build = {
    type = "rust-mlua",
    modules = {
        "squall_router"
    },
}
