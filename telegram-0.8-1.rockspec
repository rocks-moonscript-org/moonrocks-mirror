package = "telegram"
version = "0.8-1"
source = {
    url = "https://github.com/otgo/lua-telegram-api-async/archive/v0.8-1.tar.gz",
    dir = "lua-telegram-api-async-0.8-1",
}
description = {
   summary = "Telegram bots API functions using threads by @otgo.",
   detailed = [[
      Telegram bots API functions using threads working as good as asynchronous mode.
   ]],
   homepage = "https://github.com/otgo/lua-telegram-api-async",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.2", "ltn12", "dkjson", "copas", "luasec"
}
build = {
   type = "builtin",
   copy_directories = {
      "examples"
   },
   modules = {
       ['telegram.api'] = "src/api.lua"
   }
}
