package = "filament"
version = "v1.1-1"
source = {
   url = "git+ssh://git@github.com/Guard13007/Filament.git",
   tag = "v1.1"
}
description = {
   summary = "A simplification of the Love engine's threading model.",
   homepage = "https://github.com/Guard13007/Filament",
   license = "MIT license"
}
build = {
   type = "builtin",
   modules = {
      filament = "filament.lua"
   }
}
