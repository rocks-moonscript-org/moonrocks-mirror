package = "redotenv"
version = "0.1-1"
source = {
   url = "git+https://github.com/UrNightmaree/redotenv.lua",
   tag = "v0.1"
}
description = {
   homepage = "https://github.com/UrNightmaree/redotenv.lua",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      redotenv = "redotenv.lua"
   }
}
