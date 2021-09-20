package = "strongstring"
version = "1.0-4"
source = {
   url = "git+https://github.com/pavelsaman/strongstring.git",
   tag = "1.0-4"
}
dependencies = {
   "lua >= 5.1",
   "luautf8 >= 0.1.2-2"
}
description = {
   summary = "strongstring defines functions for string manipulation.",
   homepage = "https://github.com/pavelsaman/strongstring",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      strongstring = "src/strongstring.lua"
   }
}
