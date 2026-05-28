package = "vite"
version = "1.0.0-1"

source = {
   url = "https://github.com/yourusername/example/archive/refs/tags/v1.0.0.tar.gz",
   dir = "example-1.0.0-1"
}

description = {
   summary = "An example LuaRocks package",
   detailed = [[
      An example Lua module.
   ]],
   homepage = "https://github.com/yourusername/example",
   license = "MIT"
}

dependencies = {
   "lua >= 5.1",
}

build = {
   type = "builtin",
   modules = {
      example = "src/example.lua"
   }
}
