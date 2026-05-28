package = 'shiva-collection'
version = '0.1.0-1'

source = {
   url = 'git+https://github.com/adrianmejias/shiva-fw.git',
   tag = 'v0.1.0',
}

description = {
   summary  = 'Laravel-inspired Collection class for Lua 5.4',
   detailed = [[
      Fluent, chainable wrapper around Lua tables inspired by Laravel's Collection.
      Supports dot-notation key resolution, filter/map/reduce, sorting, grouping,
      pagination, when()/unless() conditional pipelines, and more.
      Exposes a global collect() constructor.
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
      ['shiva.collection'] = 'libs/collection/init.lua',
   },
}
