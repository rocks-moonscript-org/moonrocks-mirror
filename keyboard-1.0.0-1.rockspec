package = "keyboard"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/zeykatecool/jit-keyboard",
}
description = {
   summary = "Keyboard and mouse module for LuaJIT.",
   detailed = "You can read from keyboard and mouse and can even simulate events.",
   license = "MIT",
   homepage = "https://github.com/zeykatecool/jit-keyboard",
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
        keyboard = "mainKeyboard.lua",
        keys = "keys.lua"
   }
}