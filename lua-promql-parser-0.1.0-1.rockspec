package = "lua-promql-parser"
version = "0.1.0-1"

source = {
    url = "git+https://github.com/mtrbpr/lua-promql-parser",
    tag = "0.1.0",
}

description = {
    summary = "Lua Prometheus Query Parser",
    detailed = "The goal of this project is to build a PromQL lexer and parser capable of parsing PromQL that conforms with Prometheus Query.",
    homepage = "https://github.com/mtrbpr/lua-promql-parser",
    license = "MIT"
}

dependencies = {
    "lua >= 5.1",
    "luarocks-build-rust-mlua",
}

build = {
    type = "rust-mlua",

    modules = {
        "promql_parser",
    }
}