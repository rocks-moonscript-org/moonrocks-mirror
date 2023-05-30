package = "lua-oast"
version = "0.1.0-1"

source = {
    url = "git+https://github.com/BugBlocker/lotus-oast",
    tag = "0.1.0",
}

description = {
    summary = "A Rust client library for getting interaction logs from Interactsh servers",
    detailed = [[
 It has been created specifically for Lotus Project (available at https://github.com/rusty-sec/lotus) as an additional library.
    ]],
    homepage = "git+https://github.com/BugBlocker/lotus-oast",
    license = "GPL2"
}

dependencies = {
    "lua >= 5.1",
    "luarocks-build-rust-mlua",
}

build = {
    type = "rust-mlua",
    modules = {
        "interactsh"
    },
}
