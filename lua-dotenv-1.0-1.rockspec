package = "lua-dotenv"
version = "1.0-1"
source = {
   url = "git://github.com/mcjkula/lua-dotenv.git",
   tag = "v1.0"
}
description = {
   summary = "A simple environment variable handler for Lua",
   detailed = [[
      This module provides easy access to environment variables
      and includes a function to load variables from a .env file.
   ]],
   homepage = "https://github.com/mcjkula/lua-dotenv",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["lua-dotenv"] = "env.lua"
   }
}
