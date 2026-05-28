package = "dummyddnetpp"
rockspec_format = "3.0"
version = "0.1-0"
source = {
   url = "git+https://github.com/DDNetPP/dummyddnetpp.git",
   tag = "0.1-0"
}
description = {
   summary = "mock impl of plugin api",
   detailed = "",
   license = "Zlib",
   homepage = "https://github.com/DDNetPP/dummyddnetpp",
   issues_url = "https://github.com/DDNetPP/dummyddnetpp/issues",
   maintainer = "ChillerDragon <chillerdragon@gmail.com>",
   labels = { "teeworlds", "ddnet", "ddracenetwork", "game", "server", "plugin" }
}
dependencies = {
}
build = {
   type = "builtin",
   modules = {
      ["dummyddnetpp"] = "game.lua"
   }
}
