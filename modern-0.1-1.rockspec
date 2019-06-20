package = "Modern"
version = "0.1-1"
source = {
   url = "git+ssh://git@github.com/skrolikowski/Modern.git"
}
description = {
   summary = "A module/mixin system written in the Lua programming language.",
   detailed = [[
      A module can be thought of as a unit (of code), which is used to facilitate
      a more complex purpose (our program). Lua doesn't naturally come pre-built with
      the idea of a `class`, however it offers the power of `metatables` to imitate
      inheritance. This idea is the main idea behind `Modern`, but with a bit more.
   ]],
   homepage = "https://github.com/skrolikowski/Modern#Modern",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      modern = "modern.lua"
   }
}
dependencies = {
   "lua >= 5.1"
}
