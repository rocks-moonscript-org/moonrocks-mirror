package = "typed"
version = "1.1-1"
source = {
   url = "git+ssh://git@github.com/SovietKitsune/typed.git",
   tag = "v1.1.1"
}
description = {
   summary = "Typed is a module to aid in allowing for typed code",
   detailed = [[
   Here we see it gives clean errors that look like errors from misused standard functions

   ```
   bad argument #1 to 'tonumber' (string expected, got nil)
   ```
   ]],
   homepage = "https://github.com/SovietKitsune/typed",
   license = "MIT"
}
dependencies = {
   "middleclass"
}
build = {
   type = "builtin",
   modules = {
      typed = "typed.lua"
   }
}
