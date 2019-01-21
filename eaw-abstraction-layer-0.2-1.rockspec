package = "eaw-abstraction-layer"
version = "0.2-1"
source = {
   url = "git://github.com/SvenMarcus/eaw-abstraction-layer",
   tag = "v0.21"
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
dependencies = {
   "penlight >= 1.5.4"
}
build = {
   type = "builtin",
   modules = {
      ["eaw-abstraction-layer"] = "src/eaw-abstraction-layer/init.lua",
      ["eaw-abstraction-layer.cli.create_test_env"] = "src/eaw-abstraction-layer/cli/create_test_env.lua",
      ["eaw-abstraction-layer.cli.custom_assertions"] = "src/eaw-abstraction-layer/cli/custom_assertions.lua",
      ["eaw-abstraction-layer.cli.test_runner"] = "src/eaw-abstraction-layer/cli/test_runner.lua",
      ["eaw-abstraction-layer.cli.u-test"] = "src/eaw-abstraction-layer/cli/u-test.lua",
      ["eaw-abstraction-layer.core.environment"] = "src/eaw-abstraction-layer/core/environment.lua",
      ["eaw-abstraction-layer.core.metatables"] = "src/eaw-abstraction-layer/core/metatables.lua",
      ["eaw-abstraction-layer.core.sandbox"] = "src/eaw-abstraction-layer/core/sandbox.lua",
      ["eaw-abstraction-layer.functions.finders"] = "src/eaw-abstraction-layer/functions/finders.lua",
      ["eaw-abstraction-layer.functions.register_functions"] = "src/eaw-abstraction-layer/functions/register_functions.lua",
      ["eaw-abstraction-layer.functions.spawn"] = "src/eaw-abstraction-layer/functions/spawn.lua",
      ["eaw-abstraction-layer.functions.story"] = "src/eaw-abstraction-layer/functions/story.lua",
      ["eaw-abstraction-layer.functions.utilities"] = "src/eaw-abstraction-layer/functions/utilities.lua",
      ["eaw-abstraction-layer.global_value"] = "src/eaw-abstraction-layer/global_value.lua",
      ["eaw-abstraction-layer.types.faction"] = "src/eaw-abstraction-layer/types/faction.lua",
      ["eaw-abstraction-layer.types.fleet"] = "src/eaw-abstraction-layer/types/fleet.lua",
      ["eaw-abstraction-layer.types.game_object"] = "src/eaw-abstraction-layer/types/game_object.lua",
      ["eaw-abstraction-layer.types.planet"] = "src/eaw-abstraction-layer/types/planet.lua",
      ["eaw-abstraction-layer.types.story"] = "src/eaw-abstraction-layer/types/story.lua",
      ["eaw-abstraction-layer.types.type"] = "src/eaw-abstraction-layer/types/type.lua",
      ["eaw-abstraction-layer.types.unit_object"] = "src/eaw-abstraction-layer/types/unit_object.lua"
   },
   install = {
      bin = {
         eaw_test_runner = "bin/eaw_test.lua"
      }
   }
}
