local _MODREV, _SPECREV = '1.1', '-1'

package = 'std.prototype'
version = _MODREV .. _SPECREV

description = {
   summary = 'Prototype Oriented Programming with Lua',
   detailed = [[
     A straight forward prototype-based object system, and a selection of
     useful objects build on it.
   ]],
   homepage = 'http://lua-stdlib.github.io/prototype',
   license = 'MIT/X11',
}

source = (function(gitp)
   if gitp then
      return {
         url = 'git://github.com/lua-stdlib/prototype.git',
      }
   else
      return {
         url = 'http://github.com/lua-stdlib/prototype/archive/v' .. _MODREV .. '.zip',
         dir = 'prototype-' .. _MODREV,
      }
   end
end)(_MODREV == 'git')

dependencies = {
   'lua >= 5.1, < 5.6',
   'std.normalize >= 1.0.3',
}

if _MODREV == 'git' then
   dependencies[#dependencies + 1] = 'ldoc'
end

build = {
   type = 'builtin',
   modules = {
      ['std.prototype']		  = 'lib/std/prototype/init.lua',
      ['std.prototype._base']	  = 'lib/std/prototype/_base.lua',
      ['std.prototype.container'] = 'lib/std/prototype/container.lua',
      ['std.prototype.object']	  = 'lib/std/prototype/object.lua',
      ['std.prototype.set']	  = 'lib/std/prototype/set.lua',
      ['std.prototype.strbuf']	  = 'lib/std/prototype/strbuf.lua',
      ['std.prototype.trie']	  = 'lib/std/prototype/trie.lua',
      ['std.prototype.version']	  = 'lib/std/prototype/version.lua',
  },
}
