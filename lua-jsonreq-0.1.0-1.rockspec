rockspec_format = "3.0"
package = "lua-jsonreq"
version = "0.1.0-1"
source = {
   url = "git+https://github.com/SamOrlando/lua-jsonreq.git",
   tag = "v0.1.0",
}
description = {
   summary = "JSON over HTTP(S) and JSON-RPC 2.0 client helpers",
   detailed = "Small client for JSON REST endpoints and JSON-RPC 2.0 servers with injected headers, params and root fields, and a method proxy.",
   homepage = "https://github.com/SamOrlando/lua-jsonreq",
   license = "MIT",
}
dependencies = {
   "lua >= 5.1, < 5.5",
   "luasocket",
   "lua-cjson",
}
-- HTTPS URLs additionally require luasec (loaded lazily). dkjson works instead of lua-cjson.
build = {
   type = "builtin",
   modules = { jsonreq = "jsonreq.lua" },
}
test = { type = "command", command = "lua tests/test.lua" }
