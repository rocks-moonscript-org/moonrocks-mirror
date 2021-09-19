package = "strongstring"
version = "1.0-0"
source = {
   url = "git+https://github.com/pavelsaman/strongstring.git"
}
description = {
   summary = "Strongstring defines functions for string manipulation.",
   homepage = "https://github.com/pavelsaman/strongstring",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      strongstring = "src/strongstring.lua"
   }
}
