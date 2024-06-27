package = "fennel-ls"
rockspec_format = "3.0"
version = "0.1.3-1"
source = {
    url = "git+https://git.sr.ht/~xerool/fennel-ls"
}
description = {
    summary = "A language server that analyzes Fennel, a lisp that compiles to Lua",
    detailed = "LSP magic for Fennel",
    homepage = "https://sr.ht/~xerool/fennel-ls",
    license = "MIT",
}
dependencies = {
    "lua >= 5.1",
    "fennel == 1.4.2",
    "dkjson >= 2.7",
}
build_dependencies = {
    "fennel == 1.4.2",
    "luarocks-build-fennel",
}
test_dependencies = {
    "faith >= 0.1.2",
    "penlight >= 1.0.0",
}
build = {
  type = "fennel",

  modules = {
    ["fennel-ls"]                       = "src/fennel-ls.fnl",
    ["fennel-ls.analyzer"]              = "src/fennel-ls/analyzer.fnl",
    ["fennel-ls.compiler"]              = "src/fennel-ls/compiler.fnl",
    ["fennel-ls.config"]                = "src/fennel-ls/config.fnl",
    ["fennel-ls.dispatch"]              = "src/fennel-ls/dispatch.fnl",
    ["fennel-ls.docs"]                  = "src/fennel-ls/docs.fnl",
    ["fennel-ls.docs.generated.lua51"]  = "src/fennel-ls/docs/generated/lua51.fnl",
    ["fennel-ls.docs.generated.lua52"]  = "src/fennel-ls/docs/generated/lua52.fnl",
    ["fennel-ls.docs.generated.lua53"]  = "src/fennel-ls/docs/generated/lua53.fnl",
    ["fennel-ls.docs.generated.lua54"]  = "src/fennel-ls/docs/generated/lua54.fnl",
    ["fennel-ls.docs.generated.tic80"]  = "src/fennel-ls/docs/generated/tic80.fnl",
    ["fennel-ls.files"]                 = "src/fennel-ls/files.fnl",
    ["fennel-ls.formatter"]             = "src/fennel-ls/formatter.fnl",
    ["fennel-ls.handlers"]              = "src/fennel-ls/handlers.fnl",
    ["fennel-ls.json-rpc"]              = "src/fennel-ls/json-rpc.fnl",
    ["fennel-ls.lint"]                  = "src/fennel-ls/lint.fnl",
    ["fennel-ls.message"]               = "src/fennel-ls/message.fnl",
    ["fennel-ls.searcher"]              = "src/fennel-ls/searcher.fnl",
    ["fennel-ls.utils"]                 = "src/fennel-ls/utils.fnl",
  },
  install = { bin = {["fennel-ls"] = "src/fennel-ls.fnl"} },
}
