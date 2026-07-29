package = "LemonStudioFramework"
version = "1.0.0"
source = {
   url = "git+https://github.com/Lemon-Enterprise/LemonStudioFramework.git"
}
description = {
   detailed = "Lemon Studio Framework é um framework modular para jogos 2D em Lua com LÖVE. Inclui cenas, câmera, entrada, física, animações, áudio, interface e persistência, com API pública padronizada pelo prefixo `LS`.",
   homepage = "https://github.com/Lemon-Enterprise/LemonStudioFramework",
   license = "Apache-2.0"
}
dependencies = {
   queries = {}
}
build_dependencies = {
   queries = {}
}
build = {
   type = "builtin",
   modules = {
      conf = "conf.lua",
      ["lemon.animation"] = "lemon\\animation.lua",
      ["lemon.assets"] = "lemon\\assets.lua",
      ["lemon.audio"] = "lemon\\audio.lua",
      ["lemon.camera"] = "lemon\\camera.lua",
      ["lemon.core.class"] = "lemon\\core\\class.lua",
      ["lemon.core.scenes"] = "lemon\\core\\scenes.lua",
      ["lemon.core.signal"] = "lemon\\core\\signal.lua",
      ["lemon.core.state"] = "lemon\\core\\state.lua",
      ["lemon.core.timer"] = "lemon\\core\\timer.lua",
      ["lemon.debug"] = "lemon\\debug.lua",
      ["lemon.entity"] = "lemon\\entity.lua",
      ["lemon.init"] = "lemon\\init.lua",
      ["lemon.input"] = "lemon\\input.lua",
      ["lemon.math.color"] = "lemon\\math\\color.lua",
      ["lemon.math.vector"] = "lemon\\math\\vector.lua",
      ["lemon.physics.world"] = "lemon\\physics\\world.lua",
      ["lemon.save"] = "lemon\\save.lua",
      ["lemon.ui"] = "lemon\\ui.lua",
      main = "main.lua"
   }
}
test_dependencies = {
   queries = {}
}
