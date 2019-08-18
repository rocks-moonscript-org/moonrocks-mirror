package = "moon-promise"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/natnat-mc/moon-promise.git",
   tag = "v1.0.0"
}
description = {
   summary = "A simple Promises/A+ and async/await lib for Lua and MoonScript using copas",
   detailed = "moon-promise allows you to use ES6-like Promises and ECMA-262-like async/await. It uses copas as a backend.",
   homepage = "https://github.com/natnat-mc/moon-promise",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.3, < 5.4",
   "copas >= 2.0.0",
}
build = {
   type = "builtin",
   modules = {
      ["moon-promise"] = "Promise.lua"
   }
}
