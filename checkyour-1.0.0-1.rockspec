package = "checkyour"
version = "1.0.0-1"

source = {
   url = "git+https://github.com/sieep-coding/Check-Your-Lua.git",
   tag = "main"
}

description = {
   summary = "A minimal Lua Testing Framework",
   detailed = [[
      Check Your Lua is a single-file testing framework 
      with zero dependencies. It supports modern testing paradigms 
      like describe/it blocks alongside rich assertion libraries.
   ]],
   homepage = "https://github.com/sieep-coding/Check-Your-Lua",
   license = "Unlicense"
}

dependencies = {
   "lua >= 5.1"
}

build = {
   type = "builtin",
   modules = {
      checkyour = "checkyour.lua"
   }
}