package = 'YDBLua'
version = '3.2-1'
rockspec_format = "3.0"  -- Note: this is not the YDBLua version number
source = {
   -- Note: luarocks requires git:// instead of https:// in the following URL
   url = 'git://gitlab.com/YottaDB/Lang/YDBLua',
   tag = 'v' .. version:match('%d+.%d+'),
}
description = {
   summary = 'YDBLua is a Lua language plugin for the YottaDB database.',

	detailed = [[
YDBLua provides a shared library that lets the Lua language access 
a YottaDB database and the means to invoke M routines from within Lua.
While this project is stand-alone, there is a closely related project called 
MLua that goes in the other direction, allowing M software to invoke the Lua language. 
If you wish for both abilities, start with MLua which is designed to incorporate YDBLua.
      ]],
   homepage = 'https://gitlab.com/YottaDB/Lang/YDBLua',
   license = 'AGPL v3',
}

test = {
   type = 'command',
   command = 'make test',
}

build = {
   type = 'make',
   build_target = '',
   install_target = 'install',
   variables = {
      LUAROCKS_CFLAGS='$(CFLAGS)',  -- only necessary to get rid of a luarocks warning
      LUAROCKS_PREFIX='$(PREFIX)',  -- let Makefile know where Lua wants it installed so it can detect --local flag
      -- Don't set PREFIX='$(PREFIX)' because YDBLua needs its binaries to be in the system's Lua path.
   },
   copy_directories = {'tests', 'examples', 'docs'},
}
dependencies = {
   'lua >= 5.1',
   -- If you depend on other rocks, add them here
}
