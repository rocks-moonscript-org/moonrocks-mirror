local _MODREV, _SPECREV = '4.1', '-1'

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
   url = 'https://github.com/lua-stdlib/normalize/archive/v' .. _MODREV .. '.zip',
   dir = 'normalize-' .. _MODREV,
}

dependencies = {
   'lua >= 5.1, < 5.6',
}

build_dependencies = {
   'luarocks-build-luke >= 0.3',
}

build = {
   type = 'luke',

   modules = {
      {['std.normalize']         = 'lib/std/normalize/init.lua'},
      {['std.normalize._core']   = 'lib/std/normalize/_core.lua'},
      {['std.normalize.version'] = 'lib/std/normalize/version.lua.in'},
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
      url = 'git+https://github.com/lua-stdlib/normalize.git',
   }
end

