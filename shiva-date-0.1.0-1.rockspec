package = 'shiva-date'
version = '0.1.0-1'

source = {
   url = 'git+https://github.com/adrianmejias/shiva-fw.git',
   tag = 'v0.1.0',
}

description = {
   summary  = 'Date and time utility library for Lua 5.4',
   detailed = [[
      Date/time utilities for the Shiva framework built on os.time/os.date.
      Supports parsing (YYYY-MM-DD, YYYY-MM-DD HH:MM:SS, ISO 8601),
      formatting, immutable arithmetic (add/sub seconds/minutes/hours/days/
      months/years with month-end clamping), comparisons, diffs, and period
      boundaries (startOfDay, endOfMonth, startOfYear, etc.).
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
      ['shiva.date'] = 'libs/date/init.lua',
   },
}
