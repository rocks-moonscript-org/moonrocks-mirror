rockspec_format = "3.0"
package = "lua-dotenv"
version = "1.1-1"
source = {
   url = "git+https://github.com/mcjkula/lua-dotenv.git",
   tag = "v1.1-1"
}
description = {
   summary = "Load .env files and manage environment variables in Lua",
   detailed = [[
      dotenv loader for Lua 5.1+. Parses .env files with support for quoted
      values, export prefix, inline comments, empty values, and CRLF line
      endings. Variables are accessible via get() with system environment
      fallback and per-call defaults. Zero dependencies.
   ]],
   homepage = "https://github.com/mcjkula/lua-dotenv",
   license = "MIT",
   labels = {"dotenv", "env", "environment", "configuration", "config", "12factor"}
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["lua-dotenv"] = "dotenv.lua"
   }
}
