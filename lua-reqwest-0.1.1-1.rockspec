package = "lua-reqwest"
version = "0.1.1-1"

source = {
    url = "git+https://github.com/oowl/lua-reqwest",
    tag = "0.1.1",
}

description = {
    summary = "A Lua HTTP client based on rust reqwest",
    detailed = [[
        A Lua HTTP client based on rust reqwest
    ]],
    homepage = "https://github.com/oowl/lua-reqwest",
    license = "MIT"
}

dependencies = {
    "lua >= 5.1",
    "luarocks-build-rust-mlua",
}

build = {
    type = "rust-mlua",
    modules = {
        "reqwest"
    },
}