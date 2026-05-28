package = 'shiva-container'
version = '0.1.0-1'

source = {
   url = 'git+https://github.com/adrianmejias/shiva-fw.git',
   tag = 'v0.1.0',
}

description = {
   summary  = 'Service container with dependency injection for Lua 5.4',
   detailed = [[
      IoC service container for the Shiva framework.
      Supports singleton registration, lazy factories, contract validation,
      service extension (add methods), and partial/full replacement.
      Contracts are validated at boot — the server refuses to start if a
      registered service does not satisfy its declared interface.
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
      ['shiva.container'] = 'libs/container/init.lua',
   },
}
