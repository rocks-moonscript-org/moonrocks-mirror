package = "fennel-ls"
version = "0.1.1-1"
source = {
    url = "https://git.sr.ht/~xerool/fennel-ls/archive/0.1.1.tar.gz",
    dir = 'fennel-ls-0.1.1',
}
description = {
    summary = "A language server that analyzes Fennel, a lisp that compiles to Lua",
    detailed = "LSP magic for Fennel",
    homepage = "https://sr.ht/~xerool/fennel-ls",
    license = "MIT",
}
dependencies = {
    "lua >= 5.1",
    "luarocks-build-fennel >= 0.1",
    "fennel >= 1.4.1",
}
build = {
  type = "fennel",

  modules = {
    ["fennel-ls"]             = "src/fennel-ls.fnl",
    ["fennel-ls.compiler"]    = "src/fennel-ls/compiler.fnl",
    ["fennel-ls.diagnostics"] = "src/fennel-ls/diagnostics.fnl",
    ["fennel-ls.dispatch"]    = "src/fennel-ls/dispatch.fnl",
    ["fennel-ls.docs"]        = "src/fennel-ls/docs.fnl",
    ["fennel-ls.docs.lua-54"] = "src/fennel-ls/docs/lua54.fnl",
    ["fennel-ls.formatter"]   = "src/fennel-ls/formatter.fnl",
    ["fennel-ls.handlers"]    = "src/fennel-ls/handlers.fnl",
    ["fennel-ls.json-rpc"]    = "src/fennel-ls/json-rpc.fnl",
    ["fennel-ls.json.json"]   = "src/fennel-ls/json/json.lua",
    ["fennel-ls.language"]    = "src/fennel-ls/language.fnl",
    ["fennel-ls.message"]     = "src/fennel-ls/message.fnl",
    ["fennel-ls.searcher"]    = "src/fennel-ls/searcher.fnl",
    ["fennel-ls.state"]       = "src/fennel-ls/state.fnl",
    ["fennel-ls.utils"]       = "src/fennel-ls/utils.fnl",
  },

  install = { bin = {["fennel-ls"] = "src/fennel-ls.fnl"} },
}
