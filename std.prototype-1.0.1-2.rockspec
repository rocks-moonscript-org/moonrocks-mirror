package = "std.prototype"
version = "1.0.1-2"

description = {
  summary = "Prototype Oriented Programming with Lua",
  detailed = [[
    A straight forward prototype-based object system, and a selection of
    useful objects build on it.
  ]],
  homepage = "http://lua-stdlib.github.io/prototype",
  license = "MIT/X11",
}

source = {
  url = "http://github.com/lua-stdlib/prototype/archive/v1.0.1.zip",
  dir = "prototype-1.0.1",
}

dependencies = {
  "lua >= 5.1, < 5.4",
}

build = {
  type = "builtin",
  modules = {
    ["std.prototype"]		= "lib/std/prototype/init.lua",
    ["std.prototype._base"]	= "lib/std/prototype/_base.lua",
    ["std.prototype.container"]	= "lib/std/prototype/container.lua",
    ["std.prototype.object"]	= "lib/std/prototype/object.lua",
    ["std.prototype.set"]	= "lib/std/prototype/set.lua",
    ["std.prototype.strbuf"]	= "lib/std/prototype/strbuf.lua",
    ["std.prototype.trie"]	= "lib/std/prototype/trie.lua",
    ["std.prototype.version"]	= "lib/std/prototype/version.lua",
  },
}
