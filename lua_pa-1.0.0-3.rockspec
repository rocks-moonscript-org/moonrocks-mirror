rockspec_format = '3.0'

package = 'lua_pa'
version = '1.0.0-3'
source = {
   url = 'https://github.com/Crylia/lua_pa/archive/refs/tags/1.0.0.zip',
   dir = 'lua_pa-1.0.0'
}
description = {
   summary = 'Pulseaudio bindings for lua',
   detailed = [[
      Pulseaudio bindings written in lua.
      These bindings should cover most use cases and
      include moving sink/source's changing volume/muting
      and provides a signal for events like changed volume
      or new devices.
   ]],
   homepage = 'https://github.com/Crylia/lua_pa',
   license = 'GNU General Public License v3.0',
}
dependencies = {
   'lua >= 5.1, < 5.5',
}
external_dependencies = {
   LIBPULSE = {
      header = 'pulse/pulseaudio.h',
      library = 'pulse',
   },
}
test_dependencies = {
   'luasocket >= 3.1',
}
build = {
   type = 'builtin',
   modules = {
      lua_pa = {
         sources = 'src/lua_pa.c',
         headers = 'src/lua_pa.h',
         libraries = { 'pulse', 'm' },
      },
   },
   install = {
      bin = {
         'lua_pa.so',
      },
   },
}
