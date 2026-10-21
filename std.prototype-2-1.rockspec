local _MODREV, _SPECREV = '2', '-1'

package = 'std.prototype'
version = _MODREV .. _SPECREV

rockspec_format = '3.0'

description = {
   summary = 'Prototype Oriented Programming with Lua',
   detailed = [[
     A straight forward prototype-based object system, and a selection of
     useful objects build on it.
   ]],
   homepage = 'https://lua-stdlib.github.io/prototype',
   license = 'MIT/X11',
}

source = {
   url = 'https://github.com/lua-stdlib/prototype/archive/v' .. _MODREV .. '.zip',
   dir = 'prototype-' .. _MODREV,
}

dependencies = {
   'lua >= 5.1, < 5.6',
   'std.normalize >= 2.0',
}

build = {
   type = 'command',
   build_command = '$(LUA) build-aux/luke'
      .. ' package="' .. package .. '"'
      .. ' version="' .. _MODREV .. '"'
      .. ' PREFIX="$(PREFIX)"'
      .. ' LUA="$(LUA)"'
      ,
   install_command = '$(LUA) build-aux/luke install --quiet'
      .. ' INST_LUADIR="$(LUADIR)"'
      ,
   copy_directories = {'doc'},
}

test_dependencies = {
   'ansicolors',
   'luacov',
   'specl >= 15',
}

test = {
   type = 'command',
   command = 'specl -vfreport --coverage spec/*_spec.yaml',
}

if _MODREV == 'dev' then
   -- luarocks.org's ldoc fails on Lua 5.5; gvvaughan's works.
   build_dependencies = {'gvvaughan/ldoc'}

   build.copy_directories = nil

   source = {
      url = 'git+https://github.com/lua-stdlib/prototype.git',
   }
else
   -- A release commits its LDocs, so don't build them again.
   build.build_command = build.build_command .. ' LDOC=true'
end
