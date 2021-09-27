package = 'lua-fastlz'
version = '0.5.1-1'
source = {
   url = 'git+https://github.com/lalawue/lua-fastlz.git',
   tag = '0.5.1'
}
description = {
   summary = 'LZ77 lossless data compression for Lua',
   detailed = 'LZ77 lossless data compression for Lua',
   homepage = 'https://github.com/lalawue/lua-fastlz.git',
   maintainer = 'lalawue <suchaaa@gmail.com>',
   license = 'MIT/X11'
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      fastlz = {
         sources = { "lua-fastlz.c", "fastlz/fastlz.c"},
         incdirs = { "fastlz" }
      },
   }
}
