package = "lua-utils"
version = "0.1-1"
source = {
   url = "git://github.com/komainu8/Lua-Utils.git"
}
description = {
   homepage = "https://github.com/komainu8/Lua-Utils",
   maintainer = "Yasuhiro Horimoto <iddqsar888plekww@gmail.com>",
   license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["utils"] = "utils.lua"
   }
}
