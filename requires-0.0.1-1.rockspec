package = "requires"
version = "0.0.1-1"
source = {
   url = "git+https://github.com/codebabel-appbag/lua_requires.git",
   tag = "v0.0.1"
}
description = {
   summary = "A production-hardened Lua module loader with injection protection and clean error reporting.",
   detailed = [[
      Requires is a secure, fail-secure wrapper for the native require function,
      providing strict type checking, regex-based validation against command injection,
      and path disclosure masking.
   ]],
   homepage = "https://github.com/codebabel-appbag/lua_requires",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.5"
}
build = {
   type = "builtin",
   modules = {
      requires = "requires.lua"
   }
}