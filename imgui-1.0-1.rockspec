package = "imgui"
version = "1.0-1"
source = {
   url = "git+https://gitlab.com/CodUSER/imgui.git",
   tag = "1.0"
}
description = {
   homepage = "https://gitlab.com/CodUSER/imgui",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      imgui = "lua/imgui.lua"
   }
}
