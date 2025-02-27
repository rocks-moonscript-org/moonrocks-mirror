package = "dialog"
version = "1.0.0-1"
source = {
   url = "https://github.com/tortoiselinux/lua-dialog/tree/main"
}
description = {
   summary = "Dialog bindings for lua",
   detailed = [[
      This lib allow you to create TUI scripts using dialog
      ]],
   homepage = "https://github.com/tortoiselinux/lua-dialog/tree/main#readme",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "tlib >= 1.0"
}
build = {
   type = "builtin",
   modules = {
      dialog = "dialog.lua"
   }
}
