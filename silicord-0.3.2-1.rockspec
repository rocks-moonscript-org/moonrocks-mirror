package = "silicord"
version = "0.3.2-1"
source = {
    url = "git+https://github.com/mrpandolaofficial-art/silicord.git",
    tag = "v0.3.2"  -- point to the new tag
}
description = {
   summary = "A Discord API wrapper for Lua with Luau-inspired syntax.",
   detailed = [[
      Silicord allows Roblox developers to create Discord bots using
      familiar syntax while bridging the gap between Luau and standard Lua.
   ]],
   homepage = "https://github.com/mrpandolaofficial-art/silicord",
   license = "MIT"
}
dependencies = {
    "lua >= 5.1",
    "luasocket >= 2.1",   -- changed from >= 3.0
    "luasec >= 1.0",
    "copas >= 4.0",
    "dkjson >= 2.5"
}
build = {
   type = "builtin",
   modules = {
      silicord = "init.lua"
   }
}