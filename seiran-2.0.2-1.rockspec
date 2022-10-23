rockspec_format = "3.0"
package = "Seiran"
version = "2.0.2-1"
source = {
   url = "git://github.com/VanderCat/Seiran",
   tag = "v2.0.2"
}
description = {
   summary = "VK API library for Lua",
   detailed = [[
        Lightweight VK API library for Lua 5.1+ (with full Lua 5.4 support) named after Touhou character.
        NOTE: I do not know how well it works on other platforms than linux!
        Also install Lua-cURLv3 if you dont want to use your own request handler.
        You also may use cJSON or setup your own json parser.
   ]],
   homepage = "https://github.com/VanderCat/Seiran",
   license = "MIT",
   labels = {"vk", "vkapi", "vkontakte", "vk-api", "vk-sdk", "vk api", "vk sdk"}
}
dependencies = {
   "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        seiran = "seiran.lua"
    }
}