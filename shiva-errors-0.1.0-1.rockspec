package = 'shiva-errors'
version = '0.1.0-1'

source = {
   url = 'git+https://github.com/adrianmejias/shiva-fw.git',
   tag = 'v0.1.0',
}

description = {
   summary  = 'Structured error objects for Lua 5.4',
   detailed = [[
      Provides structured error tables that survive pcall in Lua 5.4.
      Every error carries a dot-notation code, message, key-value context,
      human-readable suggestion, and stack trace.
      Includes Error.safe() for wrapped execution and Error.validateConfig()
      for config validation at boot time.
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
      ['shiva.errors'] = 'libs/errors/init.lua',
   },
}
