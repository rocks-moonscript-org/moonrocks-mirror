package = "beemovie"
version = "1.0.1-1"
source = {
   url = "git://github.com/roosterchicken/beemovie-lua",
   branch = "main"
}
description = {
   summary = "beemovie text generator",
   homepage = "https://github.com/roosterchicken/beemovie-lua",
   maintainer = "Rooster <roosterchicken@protonmail.ch>",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "split == 3.2.1-1",
   "ltext == 1.1.0-1",
   "array == 1.3.4-0"
}
build = {
   type = "builtin",
   modules = {
      beemovie = "beemovie.lua",
   }
}
