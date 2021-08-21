package = 'lua-serialize'
version = '0.1.20210820-1'
source = {
   url = 'git+https://github.com/lalawue/lua-serialize.git',
   tag = '0.1.20210820'
}
description = {
   summary = 'Serialize lua objects into lua string',
   detailed = [[ Serialize lua objects into lua string, from https://github.com/cloudwu/lua-serialize ]],
   homepage = 'https://github.com/lalawue/lua-serialize',
   maintainer = 'lalawue <suchaaa@gmail.com>',
   license = 'MIT/X11'
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      ["packer"] = {
         sources = { "lpacker.c" },
      },
   }
}
