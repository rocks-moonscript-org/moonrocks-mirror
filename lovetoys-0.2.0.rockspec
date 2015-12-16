package = 'lovetoys'
version = '0.2.0'
source = {
  url = "git://github.com/Lovetoys/lovetoys",
  branch = "master"
}
description = {
  summary = 'A neat Entity-Component-System for Lua',
  detailed = [[
    Lovetoys is a full-featured game development framework, not only providing the core parts like Entity, Component and System classes but also containing a Publish-Subscribe messaging system as well as a Scene Graph, enabling you to build even complex games easily and in a structured way.
  ]],
  homepage = 'http://github.com/lovetoys/lovetoys',
  license = 'MIT <http://opensource.org/licenses/MIT>'
}
dependencies = {
  'lua >= 5.1'
}
build = {
  type = 'builtin',
  modules = {
    ['lovetoys']                                = 'lovetoys.lua',
    ['src.Component']                           = 'src/Component.lua',
    ['src.Engine']                              = 'src/Engine.lua',
    ['src.Entity']                              = 'src/Entity.lua',
    ['src.EventManager']                        = 'src/EventManager.lua',
    ['src.middleclass']                         = 'src/middleclass.lua',
    ['src.System']                              = 'src/System.lua',
    ['src.util']                                = 'src/util.lua',
    ['src.events.ComponentAdded']               = 'src/events/ComponentAdded.lua',
    ['src.events.ComponentRemoved']             = 'src/events/ComponentRemoved.lua',
  },
  install = {}
}
