package = 'shiva-num'
version = '0.1.0-1'

source = {
   url = 'git+https://github.com/adrianmejias/shiva-fw.git',
   tag = 'v0.1.0',
}

description = {
   summary  = 'Number utility library for Lua 5.4',
   detailed = [[
      Number utilities for the Shiva framework.
      Includes clamp, round, currency formatting, comma-separated format,
      percentage, compact notation (1K/1M/1B), linear interpolation (lerp),
      inverse lerp, range mapping, between check, random integers/floats,
      and unit conversions (meters/feet, km/h/mph).
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
      ['shiva.num'] = 'libs/num/init.lua',
   },
}
