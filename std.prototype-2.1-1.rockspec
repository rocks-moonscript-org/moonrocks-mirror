-- Prototype Oriented Programming for Lua 5.1, 5.2, 5.3, 5.4 & 5.5
-- Copyright (C) 2000-2026 std.prototype authors

local _MODREV, _SPECREV = '2.1', '-1'

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
   'std.normalize >= 4',
}

build_dependencies = {
   'luarocks-build-luke >= 0.3.1',
}

build = {
   type = 'luke',

   modules = {
      {['std.prototype']                = 'lib/std/prototype/init.lua'},
      {['std.prototype._base']          = 'lib/std/prototype/_base.lua'},
      {['std.prototype.container']      = 'lib/std/prototype/container.lua'},
      {['std.prototype.contextmanager'] = 'lib/std/prototype/contextmanager.lua'},
      {['std.prototype.object']         = 'lib/std/prototype/object.lua'},
      {['std.prototype.orderedmap']     = 'lib/std/prototype/orderedmap.lua'},
      {['std.prototype.scanner']        = 'lib/std/prototype/scanner.lua'},
      {['std.prototype.set']            = 'lib/std/prototype/set.lua'},
      {['std.prototype.strbuf']         = 'lib/std/prototype/strbuf.lua'},
      {['std.prototype.trie']           = 'lib/std/prototype/trie.lua'},
      {['std.prototype.version']        = 'lib/std/prototype/version.lua.in'},
   },

   -- A release commits its LDocs to install.
   copy_directories = {'doc'},
}

test_dependencies = {
   'ansicolors',
   'luacov',
   'specl >= 17',
}

test = {
   type = 'command',
   command = 'specl -vfreport --coverage spec/*_spec.yaml',
}

if _MODREV == 'dev' then
   -- luarocks.org's ldoc fails on Lua 5.5; gvvaughan's works.
   build_dependencies[#build_dependencies + 1] = 'gvvaughan/ldoc'

   -- Stamp a development build with who made it, and from which commit.
   build.version = '$USER/$gitref'

   build.copy_directories = nil

   source = {
      url = 'git+https://github.com/lua-stdlib/prototype.git',
   }
end
