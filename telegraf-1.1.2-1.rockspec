package = "telegraf"
version = "1.1.2-1"
source = {
  url = "git://github.com/lblasc/lua-telegraf",
  tag = "v1.1.2"
}
description = {
  summary = "Lua/LuaJIT/OpenResty client writer for Telegraf/InfluxDB",
  detailed = [[
  This library implements writer interface for InfluxDB line protocol.
  Focus is on simplicity and efficiency. Depending on runtime it will
  find most suitable backend/library for constructing and writing metrics.
  ]],
  homepage = "https://github.com/lblasc/lua-telegraf",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1, < 5.5"
}
build = {
  type = "builtin",
  modules = {
    ['telegraf']           = "telegraf.lua",
    ['telegraf.lineproto'] = "telegraf/lineproto.lua",
    ['telegraf.timestamp'] = "telegraf/timestamp.lua",
    ['telegraf.write']     = "telegraf/write.lua"
  }
}
