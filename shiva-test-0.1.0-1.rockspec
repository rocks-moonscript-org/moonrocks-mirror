package = 'shiva-test'
version = '0.1.0-1'

source = {
   url = 'git+https://github.com/adrianmejias/shiva-fw.git',
   tag = 'v0.1.0',
}

description = {
   summary  = 'Busted-compatible test runner for the Shiva framework',
   detailed = [[
      Lightweight, zero-dependency test runner for Lua 5.4.
      Provides a busted-compatible API: describe, it, expect, beforeEach, afterEach.
      Includes a rich assertion library (toBe, toEqual, toThrow, toContain, etc.)
      and ANSI-coloured output.
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
      ['shiva.test'] = 'libs/test/init.lua',
   },
}
