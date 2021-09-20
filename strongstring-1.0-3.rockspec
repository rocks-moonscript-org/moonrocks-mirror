package = "strongstring"
version = "1.0-3"
source = {
   url = "git+https://github.com/pavelsaman/strongstring.git",
   tag = "1.0-3"
}
dependencies = {
   "lua >= 5.1"
}
description = {
   summary = "strongstring defines functions for string manipulation.",
   detailed = [[
        strongstring defines functions for string manipulation.
        - no dependencies on other libraries
   ]],
   homepage = "https://github.com/pavelsaman/strongstring",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      strongstring = "src/strongstring.lua"
   }
}
