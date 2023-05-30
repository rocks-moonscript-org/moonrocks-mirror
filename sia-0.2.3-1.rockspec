package = "sia"
version = "0.2.3-1"
source = {
   url = "git+https://github.com/sicusa/Sia",
   tag = "0.2.3-1"
}
description = {
   summary = "Elegant ECS framework",
   homepage = "https://github.com/sicusa/Sia",
   license = "BSD-3-Clause",
   maintainer = "Phlamcenth Sicusa <sicusa@gilatod.art>"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["sia.dispatcher"] = "src/sia/dispatcher.lua",
      ["sia.entity"] = "src/sia/entity.lua",
      ["sia.group"] = "src/sia/group.lua",
      ["sia.scheduler"] = "src/sia/scheduler.lua",
      ["sia.system"] = "src/sia/system.lua",
      ["sia.world"] = "src/sia/world.lua",
      ["sia.ffic"] = "src/sia/ffic.lua"
   }
}
