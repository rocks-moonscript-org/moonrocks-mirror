package = "luatraverse"
version = "2.1-1"
source = {
   url = "hg+https://code.matthewwild.co.uk/luatraverse";
   tag = "v2.1";
}
description = {
   homepage = "https://code.matthewwild.co.uk/luatraverse",
   license = "MIT";
   summary = "Library for traversing the Lua state";
   detailed = [[
       luatraverse allows you to "walk" through all objects
       currently in the Lua state and discover the relationships
       between them. It can be useful to analyze memory usage,
       for example.
   ]];
}
build = {
   type = "builtin",
   modules = {
      ["luatraverse"] = "luatraverse.lua",
      ["luatraverse.dump"] = "dump.lua",
   }
}
