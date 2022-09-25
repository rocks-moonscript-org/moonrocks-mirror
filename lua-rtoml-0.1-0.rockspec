package = "lua-rtoml"
version = "0.1-0"

source = {
    url = "git+ssh://git@github.com/scr1pt0r/lua-rtoml.git"
}

description = {
    summary = "Lua bindings for the Rust toml crate.",
    homepage = "https://github.com/scr1pt0r/lua-rtoml",
    license = "MIT"
}

dependencies = {
    "lua >= 5.1",
    "luarocks-build-rust-mlua"
}

build = {
    type = "rust-mlua",
    modules = { "toml" }
}
