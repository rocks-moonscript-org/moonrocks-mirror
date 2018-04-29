package = "lua-value-browser"
version = "0.2-1"
source = {
   url = "https://github.com/schorg/lua-value-browser",
   tag = "v0.2"
}
description = {
   summary = "Interactively print and browse Lua values from the standalone interpreter.",
   detailed = [[
        Lua module for interactively printing and browsing Lua values from the standalone interpreter.
        Adds a parameterless function `browse` to the `debug` module on `require "debug.browser"`.
        Keeps a linear history of visited values and therefore keeps references to values that otherwise might have been garbage collected.
        Shows also meta values like: environments, upvalues, metatables and table keys which are tables, functions, threads or userdata
   ]],
   homepage = "https://github.com/schorg/lua-value-browser",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      ["debug.browser"] = "src/debug/browser.lua"
   }
}