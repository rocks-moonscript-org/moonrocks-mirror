package = "emojify"
version = "1.0-0"
source = {
   url = "git+https://github.com/NotSoClassy/emojify.lua.git"
}
description = {
   homepage = "https://github.com/NotSoClassy/emojify.lua",
   license = "MIT"
}
dependencies = {
    "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      emojify = "emojify/init.lua",
      ['emojify.emoji_list'] = "emojify/emoji_list.lua"
   }
}
