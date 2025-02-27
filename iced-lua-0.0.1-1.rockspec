package = "iced-lua"
version = "0.0.1-1"

source = {
    url = "git+https://github.com/bobbens/iced-lua",
    tag = "v0.0.1",
}

description = {
    summary = "Bindings for iced written in Rust using mlua",
    detailed = [[
        The Lua module written in Rust that provides support for iced, a cross-platform GUI library for Rust focused on simplicity and type-safety.
    ]],
    homepage = "https://github.com/bobbens/iced-lua",
    license = "MIT"
}

dependencies = {
    "lua >= 5.1",
    "luarocks-build-rust-mlua",
}

build = {
    type = "rust-mlua",
    modules = {
        "iced_lua",
    },
}
