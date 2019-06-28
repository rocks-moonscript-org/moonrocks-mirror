package = "samp-favorites"
version = "1.0"
source = {
   url = "git://github.com/imring/SampFavorites.git",
   tag = "v1.0"
}
description = {
   summary = "A SA-MP library for MoonLoader",
   detailed = "SampFavorites is a lua library for MoonLoader that allows you to work with the extension file .DAT",
   homepage = "https://github.com/imring/SampFavorites/",
   license = "MIT"
}
dependencies = {
   "lua ~> 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["SampFavorites"] = "SampFavorites.lua"
   }
}