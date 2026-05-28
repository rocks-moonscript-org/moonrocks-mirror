package = 'shiva-eventbus'
version = '0.1.0-1'

source = {
   url = 'git+https://github.com/adrianmejias/shiva-fw.git',
   tag = 'v0.1.0',
}

description = {
   summary  = 'Event bus with before/after method plugins for Lua 5.4',
   detailed = [[
      Priority-ordered event system for the Shiva framework.
      Handlers can be registered with numeric priority (lower fires first).
      Before-plugins can short-circuit method calls via EventBus.halt(value),
      returning a sentinel that skips the original and passes the value
      directly to after-plugins. After-plugins chain return values.
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
      ['shiva.eventbus'] = 'libs/eventbus/init.lua',
   },
}
