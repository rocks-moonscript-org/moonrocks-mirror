package = 'shiva-str'
version = '0.1.0-1'

source = {
   url = 'git+https://github.com/adrianmejias/shiva-fw.git',
   tag = 'v0.1.0',
}

description = {
   summary  = 'String utility library for Lua 5.4',
   detailed = [[
      Comprehensive string utilities for the Shiva framework.
      Includes trim (left/right/both), case conversion (snake, camel, pascal,
      kebab, title), startsWith/endsWith/contains, split, truncate, pad,
      replace, isEmpty, slug, and random string generation.
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
      ['shiva.str'] = 'libs/str/init.lua',
   },
}
