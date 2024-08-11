-- strease-1.0-1.rockspec
package = "strease"
version = "1.0-1"
source = {
   url = "https://github.com/deadapi/strease/archive/refs/tags/v1.0.zip", 
   dir = "strease-1.0"
}
description = {
   summary = "A handy string manipulation library for Lua.",
   detailed = [[
      Strease provides various functions for string manipulation, including trimming,
      splitting, joining, and more. It's easy to use and integrates seamlessly into Lua projects.
   ]],
   homepage = "https://github.com/deadapi/strease", 
   license = "MIT"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      strease = "src/strease.lua"
   }
}
