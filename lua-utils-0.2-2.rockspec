package = "lua-utils"
version = "0.2-2"
source = {
   url = "git://github.com/komainu8/lua-utils.git"
}
description = {
   homepage = "https://github.com/komainu8/lua-utils",
   maintainer = "Yasuhiro Horimoto <iddqsar888plekww@gmail.com>",
   license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["utils.string"] = "lib/string.lua",
      ["utils.table"] = "lib/table.lua"
   }
}
