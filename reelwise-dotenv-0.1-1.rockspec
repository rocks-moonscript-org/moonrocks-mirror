package = "reelwise-dotenv"
version = "0.1-1"
source = {
   url = "https://git.gay/rwlabkiysw/reelwise-dotenv-lua/archive/v0.1.tar.gz",
   dir = "reelwise-dotenv-lua"
}
description = {
   summary = "Dependency-free .env reader for Lua",
   detailed = [[
A tiny, dependency-free .env reader for Lua 5.1+/LuaJIT. One pure-Lua file.
Parses KEY=VALUE lines into a table; handles `export ` prefixes, whole-line
and inline `#` comments, and single/double quotes with escape sequences.
dotenv.get(key, default) falls back to os.getenv. Missing file returns an
empty table unless strict=true.
]],
   homepage = "https://git.gay/rwlabkiysw/reelwise-dotenv-lua",
   license = "Apache-2.0"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      dotenv = "dotenv.lua"
   }
}
