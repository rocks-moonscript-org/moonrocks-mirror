rockspec_format = "3.0"
package = 'lua-yottadb'
version = '2.2-1'
source = {
   url = 'git://github.com/anet-be/lua-yottadb.git',
   tag = 'v' .. version:match('%d+.%d+'),
}
description = {
   summary = 'lua-yottadb is a Lua language plugin for the MUMPS database.',

	detailed = [[
         lua-yottadb provides a shared library that lets the Lua language access 
         a YottaDB database and the means to invoke M routines from within Lua.
         While this project is stand-alone, there is a closely related project called 
         MLua that goes in the other direction, allowing M software to invoke the Lua language. 
         If you wish for both abilities, start with MLua which is designed to incorporate lua-yottadb.
      ]],
   homepage = 'https://github.com/anet-be/lua-yottadb',
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
      LUAROCKS_CFLAGS='$(CFLAGS)',  -- only necessary to get rid of a luarocks warning
      LUAROCKS_PREFIX='$(PREFIX)',  -- let Makefile know where Lua wants it installed so it can detect --local flag
      -- Don't set PREFIX='$(PREFIX)' because lua-yottadb needs its binaries to be in the system's Lua path. I don't really understand why luarocks sets its PREFIX to non-path locations
   },
   copy_directories = {'tests', 'examples', 'docs'},
}
dependencies = {
   'lua >= 5.1',
   -- If you depend on other rocks, add them here
}
