package = "silicord"
version = "1.1.0-1"
source = {
    url = "git+https://github.com/silicord/silicord.github.io.git",
    tag = "v1.1.0"  -- point to the new tag
}
description = {
   summary = "A Discord bot library for Lua with Luau-inspired syntax and modern support.",
   detailed = [[
      Silicord allows Roblox developers to create Discord bots using familiar syntax while bridging the gap between Luau and standard Lua. Check out the official homepage at https://silicord.github.io/
   ]],
   homepage = "https://silicord.github.io/",
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