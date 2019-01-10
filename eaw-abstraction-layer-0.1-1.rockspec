package = "eaw-abstraction-layer"
version = "0.1-1"
source = {
   url = "git://github.com/SvenMarcus/eaw-abstraction-layer",
   tag = "v0.11"
}
description = {
   detailed = [[
- [Empire at War Abstraction Layer](#empire-at-war-abstraction-layer)
  - [About](#about)
  - [Usage](#usage)
  - [Currently available EaW functions and types](#currently-available-eaw-functions-and-types)
    - [Functions](#functions)
    - [Types](#types)
  - [Configuration](#configuration)]],
   homepage = "https://github.com/SvenMarcus/eaw-abstraction-layer",
   license = "MIT"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["eaw-abstraction-layer"] = "src/eaw-abstraction-layer/init.lua",
      ["eaw-abstraction-layer.busted_matchers"] = "src/eaw-abstraction-layer/busted_matchers.lua",
      ["eaw-abstraction-layer.environment"] = "src/eaw-abstraction-layer/environment.lua",
      ["eaw-abstraction-layer.faction"] = "src/eaw-abstraction-layer/faction.lua",
      ["eaw-abstraction-layer.finders"] = "src/eaw-abstraction-layer/finders.lua",
      ["eaw-abstraction-layer.game_object"] = "src/eaw-abstraction-layer/game_object.lua",
      ["eaw-abstraction-layer.global_value"] = "src/eaw-abstraction-layer/global_value.lua",
      ["eaw-abstraction-layer.metatables"] = "src/eaw-abstraction-layer/metatables.lua",
      ["eaw-abstraction-layer.register_functions"] = "src/eaw-abstraction-layer/register_functions.lua",
      ["eaw-abstraction-layer.spawn"] = "src/eaw-abstraction-layer/spawn.lua",
      ["eaw-abstraction-layer.story"] = "src/eaw-abstraction-layer/story.lua",
      ["eaw-abstraction-layer.type"] = "src/eaw-abstraction-layer/type.lua",
      ["eaw-abstraction-layer.unit_object"] = "src/eaw-abstraction-layer/unit_object.lua",
      ["eaw-abstraction-layer.utility_functions"] = "src/eaw-abstraction-layer/utility_functions.lua"
   }
}
