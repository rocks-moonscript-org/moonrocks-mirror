package = "lua-lhtmlr"
version = "0.1.0-1"

source = {
    url = "git+https://github.com/BugBlocker/lhtmlr",
    tag = "0.1.0",
}

description = {
    summary = "A fast Lua HTML Parsing/Searching library written in Rust for Lotus Project",
    detailed = [[
 lhtmlr is a Lua module that has been developed using Rust programming language. 
 It has been created specifically for Lotus Project (available at https://github.com/rusty-sec/lotus) as an additional library.
 With this library, users can easily parse and extract information from HTML documents in Lua. It provides a simple and intuitive API that allows users to navigate through the document structure and extract data using CSS selectors.
    ]],
    homepage = "https://github.com/BugBlocker/lhtmlr",
    license = "GPL2"
}

dependencies = {
    "lua >= 5.1",
    "luarocks-build-rust-mlua",
}

build = {
    type = "rust-mlua",
    modules = {
        "lhtmlr"
    },
}
