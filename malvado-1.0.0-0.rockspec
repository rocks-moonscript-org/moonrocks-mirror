package = "malvado"
version = "1.0.0-0"
source = {
   url = "git://github.com/jepemo/malvado",
   tag = "v1.0",
   dir = "malvado"
}
description = {
   summary = "A game programming library with 'DIV Game Studio'-style processes for Lua/Love2D",
   detailed = [[
   Api inspired with the 'DIV Game Studio'-style of making games. Game definition
   with "independent" processes (game entities).
   ]],
   homepage = "http://github.com/jepemo/malvado",
   license = "GPLv-3"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["malvado"]         = "malvado/init.lua",
      ["malvado.core"]    = "malvado/core.lua",
      ["malvado.draw"]    = "malvado/draw.lua",
      ["malvado.effects"] = "malvado/effects.lua",
      ["malvado.key"]     = "malvado/key.lua",
      ["malvado.map"]     = "malvado/map.lua",
      ["malvado.math"]    = "malvado/math.lua",
      ["malvado.mouse"]   = "malvado/mouse.lua",
      ["malvado.screen"]  = "malvado/screen.lua",
      ["malvado.text"]    = "malvado/text.lua",
      ["malvado.utils"]   = "malvado/utils.lua",
      ["malvado.video"]   = "malvado/video.lua",
      ["malvado.wm"]      = "malvado/wm.lua",
   }
}
