package="JSON4Lua"
version="0.9.20-1"
source = {
   url = "http://luaforge.net/frs/download.php/1375/JSON4Lua-0.9.20.zip",
   dir = "json"
}
description = {
   summary = "JSON4Lua and JSONRPC4Lua implement JSON (JavaScript Object Notation) encoding and decoding and a JSON-RPC-over-http client for Lua.",
   detailed = [[
      JSON4Lua and JSONRPC4Lua implement JSON (JavaScript Object Notation)
      encoding and decoding and a JSON-RPC-over-http client for Lua.
      JSON is JavaScript Object Notation, a simple encoding of
      Javascript-like objects that is ideal for lightweight transmission
      of relatively weakly-typed data. A sub-package of JSON4Lua is
      JSONRPC4Lua, which provides a simple JSON-RPC-over-http client and server
      (in a CGILua environment) for Lua.
   ]],
   homepage = "http://json.luaforge.net/",
   license = "GPL"
}
dependencies = {
   "lua >= 5.1"
}

build = {
   type = "module",
   modules = {
      json = "json.lua"
   }
}
