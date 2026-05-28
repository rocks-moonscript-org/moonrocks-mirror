package = "fn-commands"
version = "0.1.0-1"
rockspec_format = "3.0"
source = {
   url = "git+https://github.com/na-trium-144/fn-commands.git",
   tag = "v0.1.0"
}
description = {
   summary = "Lua library for describing chart content of Falling Nikochan",
   detailed = [[
      Lua library for describing chart content of Falling Nikochan.

      Falling Nikochan uses this library with Lua 5.4 internally, but it does not depend on other libraries and can be used in any Lua environment.
   ]],
   homepage = "https://github.com/na-trium-144/fn-commands",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
test_dependencies = {
   "busted",
   "lunajson"
}
test = {
   type = "busted"
}
build = {
   type = "builtin",
   modules = {
      ["fn-commands"] = "fn-commands.lua"
   }
}
