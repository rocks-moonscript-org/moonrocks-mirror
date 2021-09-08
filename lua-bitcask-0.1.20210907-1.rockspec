package = 'lua-bitcask'
version = '0.1.20210907-1'
source = {
   url = 'git+https://github.com/lalawue/lua-bitcask.git',
   tag = '0.1.20210907',
}
description = {
   summary = 'Bitcask Key/Value store for Lua',
   detailed = [[Bitcask Key/Value store for Lua]],
   homepage = 'https://github.com/lalawue/lua-bitcask',
   maintainer = 'lalawue <suchaaa@gmail.com>',
   license = 'MIT/X11'
}
dependencies = {
   "lua >= 5.1",
   "luafilesystem >= 1.5"
}
build = {
   type = "builtin",
   modules = {
      ["bitcask.crc32"] = {
         sources = { "crc32.c" }
      },
      ["bitcask"] = "bitcask.lua",
   }
}
