package = "horchata"
version = "0-2"
source = {
   url = "git+https://github.com/JuanjoSalvador/horchata.git",
   tag = "0.2"
}
description = {
   summary = "horchata, a bunch of micromodules made to make easier Lua game development",
   detailed = [[
# horchata
A bunch of micromodules made to make easier Lua game development]],
   homepage = "https://github.com/JuanjoSalvador/horchata",
   license = "MIT"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["horchata.collision"] = "horchata/collision.lua",
      ["horchata.color"] = "horchata/color.lua",
      ["horchata.logger"] = "horchata/logger.lua",
      ["horchata.menu"] = "horchata/menu.lua",
      ["horchata.music"] = "horchata/music.lua",
      ["horchata.serializer"] = "horchata/serializer.lua"
   },
   copy_directories = {
      "docs"
   }
}
