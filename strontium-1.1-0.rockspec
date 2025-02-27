rockspec_format = "3.0"
package = "strontium"
version = "1.1-0"
source = {
   url = "git://github.com/balt-dev/strontium",
}
description = {
   homepage = "https://github.com/balt-dev/strontium",
   license = "MIT",
   maintainer = "baltdev <heptor42+luarocks@gmail.com>",
   labels = { "parsing" },
   summary = "A pure Lua, one file, dead simple LL(k) parsing library.",
   detailed = [[
Dead simple, one file parsing library for Lua.
Made by @baltdev. Copyright 2024.
Licensed under the MIT license.
See https://github.com/balt-dev/strontium.

See the documentation here:
https://github.com/balt-dev/strontium/tree/v1.1.0/doc/index.md
   ]]
}
dependencies = {
   "lua ~> 5"
}
build = {
   type = "builtin",
   modules = {
      strontium = "strontium.lua"
   },
   copy_directories = { "doc" }
}
