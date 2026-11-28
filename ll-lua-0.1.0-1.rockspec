package = "ll-lua"
version = "0.1.0-1"
source = { url = "https://github.com/ll-tg/ll-lua" }
description = {
  summary = "Lua 5.5 Telegram bot runtime with durable queues",
  detailed = "A language-only Telegram Bot API framework for Lua 5.5.",
  homepage = "https://github.com/ll-tg/ll-lua",
  license = "MIT"
}
dependencies = { "lua >= 5.5", "luasocket >= 3.1-1" }
build = {
  type = "builtin",
  modules = {
    ["ll-lua"] = "src/ll-lua.lua",
    ["ll-lua.json"] = "src/ll-lua/json.lua",
    ["ll-lua.api"] = "src/ll-lua/api.lua",
    ["ll-lua.queue"] = "src/ll-lua/queue.lua",
    ["ll-lua.storage"] = "src/ll-lua/storage.lua",
    ["ll-lua.metrics"] = "src/ll-lua/metrics.lua",
    ["ll-lua.lifecycle"] = "src/ll-lua/lifecycle.lua",
    ["ll-lua.transport"] = "src/ll-lua/transport.lua"
  },
  install = { bin = { ["ll-lua"] = "bin/ll-lua" } }
}
