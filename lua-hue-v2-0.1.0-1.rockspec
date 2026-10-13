rockspec_format = "3.0"
package = "lua-hue-v2"
version = "0.1.0-1"
source = {
   url = "git+https://github.com/SamOrlando/lua-hue-v2.git",
   tag = "v0.1.0",
}
description = {
   summary = "Philips Hue CLIP API v2 client",
   detailed = "Small client for the Philips Hue bridge CLIP v2 REST API: key registration, resource walking/caching and per-resource helpers.",
   homepage = "https://github.com/SamOrlando/lua-hue-v2",
   license = "MIT",
}
dependencies = {
   "lua >= 5.1, < 5.5",
   "lua-jsonreq >= 0.1.0",
   "luasec",
}
build = {
   type = "builtin",
   modules = { ["hue-v2"] = "hue-v2.lua" },
}
test = { type = "command", command = "lua tests/test.lua" }
