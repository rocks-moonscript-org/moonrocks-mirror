package = 'lua-bsdiff'
version = '0.0.2-1'
source = {
   url = 'git+https://github.com/lalawue/lua-bsdiff.git',
   tag = '0.0.2'
}
description = {
   summary = 'Memory bsdiff & bspatch lib for Lua',
   detailed = [[
	Memory bsdiff & bspatch lib for Lua,
	modified from https://github.com/mendsley/bsdiff.git
   ]],
   homepage = 'https://github.com/lalawue/lua-bsdiff.git',
   maintainer = 'lalawue <suchaaa@gmail.com>',
   license = 'MIT/X11'
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      ["bsdiff"] = {
         sources = { "src/lua-bsdiff.c", "src/bsdiff.c", "src/bspatch.c" },
         incdirs = { "src" }
      },
   }
}
