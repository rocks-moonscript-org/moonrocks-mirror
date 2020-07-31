package = "rude"
version = "0.4-1"
source = {
   url = "git://github.com/mrrogge/rude",
   tag = "v0.4.1"
}
description = {
   homepage = "git://github.com/mrrogge/rude",
   license = "MIT",
   summary = 'An ECS game engine built for LÖVE2D.'
}
dependencies = {
   'lua >= 5.1',
   'middleclass >= 4.0-0',
   'dkjson >= 2.5'
}
build = {
   type = "builtin",
   modules = {
      --lib
      ['rude.lib.bitser'] = 'lib/bitser.lua',
      ['rude.lib.strict'] = 'lib/strict.lua',
      --core modules
      ['rude._contract'] = '_contract.lua',
      ['rude.alert'] = 'alert.lua',
      ['rude.assert'] = 'assert.lua',
      ['rude.Engine'] = 'Engine.lua',
      ['rude.EventEmitterMixin'] = 'EventEmitterMixin.lua',
      ['rude.graphics'] = 'graphics.lua',
      ['rude.init'] = 'init.lua',
      ['rude.PoolableMixin'] = 'PoolableMixin.lua',
      ['rude.RudeObject'] = 'RudeObject.lua',
      ['rude.Scene'] = 'Scene.lua',
      ['rude.Sys'] = 'Sys.lua',
      ['rude.TablePool'] = 'TablePool.lua',
      ['rude.util'] = 'util.lua'
   }
}
