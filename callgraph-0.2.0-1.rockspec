package = "callgraph"
version = "0.2.0-1"

source = {
  url = "git+https://github.com/gszr/lua-call-graph.git",
  tag = "v0.2.0",
}

description = {
  summary = "Generate the call graph of a Lua program",
  detailed = [[
    Uses the `debug` standard library to generate a call graph of a Lua program.
    Exports the call graph to a .dot graph.
  ]],
  license = "MIT License",
  homepage = "https://github.com/gszr/lua-call-graph",
}

dependencies = {
  "lua >= 5.1",
}

build = {
   type = "builtin",
   modules = {
     callgraph = "callgraph.lua"
   }
}
