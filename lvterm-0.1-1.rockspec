local _MODREV, _SPECREV = '0.1', '-1'

rockspec_format = '3.0'
package = 'lvterm'
version = _MODREV .. _SPECREV

description = {
   summary  = 'Virtual terminal for Lua',
   detailed = [[
      Feed a virtual terminal the bytes that a program writes, and ask what
      the screen shows and where the cursor is, to test programs that draw
      on a terminal.  Emulated by libvterm.
   ]],
   homepage = 'https://github.com/gvvaughan/lvterm',
   license  = 'MIT/X11',
}

source = {
   url = 'https://github.com/gvvaughan/lvterm/archive/v' .. _MODREV .. '.zip',
   dir = 'lvterm-' .. _MODREV,
}

dependencies = {
   'lua >= 5.1, < 5.6',
}

build_dependencies = {
   'luarocks-build-luke >= 0.3',
}

-- LuaRocks finds libvterm, and passes VTERM_DIR, VTERM_INCDIR and
-- VTERM_LIBDIR, which `lvterm.config` records for LuaJIT to load it from,
-- and which the C backend compiles and links with.
external_dependencies = {
   VTERM = {
     header  = 'vterm.h',
     library = 'vterm',
   },
}

build = {
   type = 'luke',

   -- The extension of a shared library that LuaJIT loads by name.
   substitute = {
      platforms = {
         macosx = {VTERM_SOEXT = 'dylib'},
         VTERM_SOEXT = 'so',
      },
   },

   -- What every module needs, which only the C backend compiles with.
   incdirs  = {
      '$LUA_INCDIR',
   },

   external_dependencies = {
      {VTERM = {
         library = {checksymbol = 'vterm_new', library = 'vterm'},
      }},
   },

   modules  = {
      {['lvterm']          = 'lib/lvterm/init.lua'},
      {['lvterm.config']   = 'lib/lvterm/config.lua.in'},
      {['lvterm.core']     = 'ext/lvterm.c'},
      {['lvterm.ffi']      = 'lib/lvterm/ffi.lua'},
      {['lvterm.terminal'] = 'lib/lvterm/terminal.lua'},
   },

   -- A release commits its LDocs to install.
   copy_directories = {'doc'},
}

test_dependencies = {
   'ansicolors',
   'luacov',
   'specl >= 17.2.2',
}

test = {
   type = 'command',
   command = 'specl -vfreport --coverage spec/*_spec.yaml',
}

if _MODREV == 'dev' then
   -- Only a release builds LDocs, which `luke release` commits, but
   -- `check_dependencies` finds an ldoc here.  luarocks.org's ldoc fails
   -- on Lua 5.5; gvvaughan's works.
   build_dependencies[#build_dependencies + 1] = 'gvvaughan/ldoc'

   build.copy_directories = nil

   source = {
      url = 'git+https://github.com/gvvaughan/lvterm.git',
   }
end
