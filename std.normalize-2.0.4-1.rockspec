local _MODREV, _SPECREV = '2.0.4', '-1'

package = 'std.normalize'
version = _MODREV .. _SPECREV

rockspec_format = '3.0'

description = {
   summary = 'Normalized Lua Functions',
   detailed = [[
      This module can inject deterministic versions of core Lua
      functions that do not behave identically across all supported Lua
      implementations into your module's lexical environment.   Each
      function is as thin and fast a version as is possible in each Lua
      implementation, evaluating to the Lua C implementation with no
      overhead when semantics allow.
   ]],
   homepage = 'https://lua-stdlib.github.io/normalize',
   issues_url = 'https://github.com/lua-stdlib/normalize/issues',
   license = 'MIT/X11',
}

source = {
   url = 'http://github.com/lua-stdlib/normalize/archive/v' .. _MODREV .. '.zip',
   dir = 'normalize-' .. _MODREV,
}

dependencies = {
   'lua >= 5.1, < 5.6',
   'std._debug ~> 1',
}

build_dependencies = {
   'ldoc',
}

build = {
   modules = {
      ['std.normalize']         = 'lib/std/normalize/init.lua',
      ['std.normalize.version'] = 'lib/std/normalize/version.lua',
   },
   copy_directories = {'doc'},
}

test_dependencies = {
   'ansicolors',
   'luacov',
   'specl',
   'typecheck >= 3.0',
}

test = {
   type = 'command',
   command = 'make check',
}

if _MODREV == 'git' then
   source = {
      url = 'git://github.com/lua-stdlib/normalize.git',
   }
end

