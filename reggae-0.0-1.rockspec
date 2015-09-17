package = "reggae"
version = "0.0-1"
source = {
   url = "git://github.com/atilaneves/reggae-lua"
}
description = {
   summary = "A Lua interface / front-end to the reggae meta-build system",
   detailed = [[
         A Lua interface / front-end to the reggae meta-build system.
         This rock allows a user to write build descriptions for reggae
         in Lua and have builds generated in their backend of choice.
            ]],
   homepage = "https://github.com/atilaneves/reggae-lua",
   license = "BSD-3-Clause"
   }
dependencies = {
   "lua >= 5.2"
}
build = {
   type = "builtin",
   modules = {
      reggae = "reggae.lua",
      reggae_json_build = "reggae_json_build.lua",
      JSON = "JSON.lua"
   }
}
