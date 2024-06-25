package = "luactx"
version = "1.0-1"
source = {
   url = "git://github.com/jigordev/luactx.git"
}
description = {
   summary = "luactx is a Lua library designed to facilitate context management in both synchronous and asynchronous environments.",
   detailed = [[
      This library provides a structured way to handle setup, execution, and teardown of operations within a defined context.
   ]],
   license = "MIT",
   homepage = "https://github.com/jigordev/luactx",
   maintainer = "J. Igor Melo <jigordev@gmail.com>",
}
dependencies = {
    "lua >= 5.1",
    "middleclass",
}
build = {
   type = "builtin",
   modules = {
      ["lctx"] = "luactx.lua"
   }
}