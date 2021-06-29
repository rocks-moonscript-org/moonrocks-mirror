package = 'MNet'
version = '0.3.20210628-1'
source = {
   url = 'git+https://github.com/lalawue/m_net.git',
   tag = '0.3.20210628',
}
description = {
   summary = 'Cross platform network library support pull style API',
   detailed = [[
      MNet is a cross platform network library, support pull style API,
      using epoll/kqueue/wepoll underlying.
   ]],
   homepage = 'https://github.com/lalawue/m_net',
   maintainer = 'lalawue <suchaaa@gmail.com>',
   license = 'MIT/X11'
}
dependencies = {
   "lua >= 5.1",
   "luarocks-build-extended"
}
build = {
   type = "extended",
   modules = {
      ["mnet.core"] = {
         sources = { "src/mnet_core.c", "extension/lua/mnet_lua.c" },
         incdirs = { "src" }
      },
      ["mnet-chann"] = "extension/lua/mnet-chann.lua",
   }
}
