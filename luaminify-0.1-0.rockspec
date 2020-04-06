package = "LuaMinify"
version = "0.1-0"
source = {
   url = "git://github.com/LuaStakky/LuaMinify",
   tag = "v0.1-0"
}
description = {
   summary = "Lua minification library.",
   detailed = [[See https://github.com/LuaStakky/LuaMinify for more information.]],
   homepage = "https://github.com/LuaStakky/LuaMinify",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build={
   type="builtin",
   modules={
     minify="src/minify/init.lua",
     ["minify.css"]="src/minify/css.lua"
   }
}