package = "fa-icons-4"
version = "2-1"
source = {
   url = "git+https://gitlab.com/THE-FYP/lua-fa-icons-4.git",
   tag = "v2"
}
description = {
   summary = "Font Awesome 4 Icons",
   homepage = "https://gitlab.com/THE-FYP/lua-fa-icons-4",
   license = "The Unlicense"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["fa-icons"] = "fa-icons.lua"
   }
}
