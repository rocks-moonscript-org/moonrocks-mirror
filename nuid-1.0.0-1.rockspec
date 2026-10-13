rockspec_format = "3.0"
package = "nuid"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/SamOrlando/lua-nuid.git",
   tag = "v1.0.0",
}
description = {
   summary = "NATS Unique Identifier (NUID) generator in pure Lua",
   detailed = [[
Port of nats-io/nuid: 22-character base-62 IDs made of a 12-char random
prefix and a 10-char randomized-increment sequence. Pure Lua, works on
Lua 5.1-5.4 and LuaJIT.
]],
   homepage = "https://github.com/SamOrlando/lua-nuid",
   license = "MIT",
   labels = { "nats", "uuid", "id" },
}
dependencies = { "lua >= 5.1, < 5.5" }
build = {
   type = "builtin",
   modules = { nuid = "nuid.lua" },
}
test = {
   type = "command",
   script = "tests/test_nuid.lua",
}
