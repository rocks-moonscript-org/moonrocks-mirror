package = "redotenv"
version = "0.1-2"
source = {
   url = "git+https://github.com/UrNightmaree/redotenv.lua",
   tag = "v0.1-2_luarocks"
}
description = {
   homepage = "https://github.com/UrNightmaree/redotenv.lua",
   license = "MIT",
   summary = "An optimized .env parser for Lua"
}
dependencies = {
    "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["redotenv"] = "redotenv.lua"
   }
}
