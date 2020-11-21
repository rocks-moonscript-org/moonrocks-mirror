package = "rude"
version = "0.5.1-1"
source = {
   url = "git://github.com/mrrogge/rude",
   tag = "v0.5.1"
}
description = {
   homepage = "https://github.com/mrrogge/rude",
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
      ['rude.lib.bitser'] = 'rude/lib/bitser.lua',
      ['rude.lib.strict'] = 'rude/lib/strict.lua',
      --core modules
      ['rude._contract'] = 'rude/_contract.lua',
      ['rude.alert'] = 'rude/alert.lua',
      ['rude.assert'] = 'rude/assert.lua',
      ['rude.Engine'] = 'rude/Engine.lua',
      ['rude.EventEmitterMixin'] = 'rude/EventEmitterMixin.lua',
      ['rude.graphics'] = 'rude/graphics.lua',
      ['rude.init'] = 'rude/init.lua',
      ['rude.PoolableMixin'] = 'rude/PoolableMixin.lua',
      ['rude.RudeObject'] = 'rude/RudeObject.lua',
      ['rude.Scene'] = 'rude/Scene.lua',
      ['rude.Sys'] = 'rude/Sys.lua',
      ['rude.TablePool'] = 'rude/TablePool.lua',
      ['rude.util'] = 'rude/util.lua'
   }
}
