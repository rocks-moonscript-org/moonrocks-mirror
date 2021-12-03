package = "api7-lua-tinyyaml"
version = "0.4.1-0"
source = {
   url = "git://github.com/api7/lua-tinyyaml",
   tag = "v0.4.1"
}

description = {
   summary = "a tiny yaml (subset) parser for pure lua",
   homepage = "https://github.com/api7/lua-tinyyaml",
   license = "MIT License",
}

build = {
   type = "builtin",
   modules = {
      ["tinyyaml"] = "tinyyaml.lua"
   }
}
