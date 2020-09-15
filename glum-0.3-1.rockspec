package = "glum"
version = "0.3-1"
source = {
   url = "git+https://cogarr.net/source/cgit.cgi/glum"
}
description = {
   summary = "Lua minifieir",
   detailed = [[
   	A basic lua minifier, with some optimizations
	and simplifications.
   ]],
   homepage = "https://cogarr.net/source/cgit.cgi/glum/about",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "lua-parser >= 1.0.0",
}
build = {
   type = "builtin",
   modules = {
      ["glum"] = "src/glum.lua",
      ["glum.ast_opts"] = "src/ast_opts.lua",
      ["glum.uglify"] = "src/uglify.lua",
  },
   install = {
      bin = {
         ["glum"] = "src/minify.lua"
      }
   }
}

