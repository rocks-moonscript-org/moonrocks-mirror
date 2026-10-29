-- Smush the source, Luke!
-- Copyright (C) 2026 Gary V. Vaughan

local _MODREV, _SPECREV = '0.1.3', '-1'

rockspec_format = '3.0'
package = 'smush'
version = _MODREV .. _SPECREV

description = {
   summary = 'Bundle Lua modules into a single file',
   detailed = [[
      Squeezes the comments and white space out of Lua modules, and writes
      them into one file, to run as a program or load as a module, where
      they run in an environment of their own that nothing leaks out of or
      into.
   ]],
   homepage = 'https://github.com/gvvaughan/smush',
   license = 'MIT',
}

dependencies = {
   'lua >= 5.1, < 5.6',
}

source = {
   url = 'https://github.com/gvvaughan/smush/archive/v' .. _MODREV .. '.zip',
   dir = 'smush-' .. _MODREV,
}

if _MODREV == 'dev' then
   source = {
      url = 'git+https://github.com/gvvaughan/smush.git',
   }
end

build = {
   type = 'builtin',

   install = {
      bin = {smush = 'build-aux/smush'},
   },
}

if _MODREV == 'dev' then
   -- The rock installs only build-aux/smush as the `smush` command.
   local bundled = {
      'lib/smush/init.lua',
      'lib/smush/lexer.lua',
      'lib/smush/version.lua.in',
      'std.functional._base',
      'std.functional.init',
      'std.normalize',
      'std.normalize._core',
      'std.prototype._base',
      'std.prototype.container',
      'std.prototype.contextmanager',
      'std.prototype.object',
      'std.prototype.scanner',
      'std.prototype.set',
   }

   build.type = 'luke'

   -- Smush is one file with these bundled in, so a development build needs
   -- them only to build it.
   build_dependencies = {
      'luarocks-build-luke >= 0.3.1',
      'std.functional >= 2.1',
      'std.normalize >= 4.1',
      'std.prototype >= 2.1',
   }

   build.bin = {
      {['build-aux/smush'] = {
         -- smush finds the std modules on LUA_PATH, as `luarocks path` sets
         -- it, or else on the default path.
         command = 'LUA_PATH="$abs_top_srcdir/lib/?.lua;$abs_top_srcdir/lib/?/init.lua;$LUA_PATH;;"' ..
                   ' $LUA bin/smush --main=smush $sources > $target',
         sources = bundled,
      }},
   }

   -- Stamp a development build with who made it, and from which commit.
   build.version = '$USER/$gitref'
end

-- The specs run againt the source in lib/, so they need the libraries that
-- smush bundles installed.
test_dependencies = {
   'ansicolors',
   'luacov',
   'specl >= 17',
   'std.functional >= 2.1',
   'std.normalize >= 4.1',
   'std.prototype >= 2.1',
}

test = {
   type = 'command',
   command = 'specl -vfreport --coverage spec/*_spec.yaml',
}
