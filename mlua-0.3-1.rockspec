rockspec_format = "3.0"
package = 'MLua'
version = '0.3-1'
source = {
   url = 'git://github.com/anet-be/mlua.git',
   tag = 'v' .. version:match('%d+.%d+'),
}
description = {
   summary = 'MLua is a Lua language plugin for the MUMPS database.',

	detailed = [[
         MLua provides the means to call Lua from within M.
         MLua incorporates lua-yottadb which operates in the other direction,
         letting Lua code access an M database.
      ]],
   homepage = 'https://github.com/anet-be/mlua',
   license = 'AGPL',
}

test = {
   type = 'command',
   command = 'make test',
}

build = {
   type = 'make',
   build_target = 'all',
   install_target = 'install',
   variables = {
      LUA_BUILD='5.4.4',
      LUAROCKS_CFLAGS='$(CFLAGS)',  -- only necessary to get rid of a luarocks warning
      LUAROCKS_PREFIX='$(PREFIX)',  -- let Makefile know where Lua wants it installed so it can detect --local flag
      -- Don't set PREFIX='$(PREFIX)' because MLua needs its binaries to be in the system's Lua path. I don't really understand why luarocks sets its PREFIX to non-path locations
   },
   copy_directories = {'tests'},
}
dependencies = {
   --'lua >= 5.1',  -- MLua does not depend on any particular Lua version as it builds its own one into mlua.so
   -- If you depend on other rocks, add them here
}
