package = "mymodule"
version = "0.1.0-1"

source = {
    url = "git+https://gitee.com/jinq0123/test-luarocks-build-rust-mlua",
    tag = "0.1.0",
}

description = {
    summary = "Test lua module written in Rust mlua and built with luarocks-build-rust-mlua",
    detailed = [[
        The Lua module written in Rust that exports a hello() function.
        This is the example of mlua module mode.
    ]],
    homepage = "https://gitee.com/jinq0123/test-luarocks-build-rust-mlua",
    license = "MIT"
}

dependencies = {
    "lua >= 5.1",
    "luarocks-build-rust-mlua",
}

build = {
    type = "rust-mlua",
    modules = {
        "my_module"
    },
}
