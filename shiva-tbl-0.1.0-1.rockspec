package = 'shiva-tbl'
version = '0.1.0-1'

source = {
   url = 'git+https://github.com/adrianmejias/shiva-fw.git',
   tag = 'v0.1.0',
}

description = {
   summary  = 'Table utility library for Lua 5.4',
   detailed = [[
      Comprehensive table utilities for the Shiva framework.
      Includes shallow/deep copy, shallow/deep merge, dot-notation get/set/has,
      keys, values, count, isEmpty, isArray, flatten, pick, omit,
      any/all predicates, and freeze (immutable proxy via __newindex).
   ]],
   homepage = 'https://github.com/adrianmejias/shiva-fw',
   license  = 'MIT',
}

dependencies = {
   'lua >= 5.4',
}

build = {
   type    = 'builtin',
   modules = {
      ['shiva.tbl'] = 'libs/tbl/init.lua',
   },
}
