package = "lenix"
version = "0.1.0-1"

source = {
   url = "git+https://github.com/lenixdev/lenix.git",
   tag = "v0.1.0"
}

description = {
   summary = "Lua OOP class module similar to TypeScript/JavaScript/Java/C++ classes",
   detailed = "Lua object oriented programming class module with support for constructors, getters, setters, inheritance, static members, private members, final members, and virtual/override methods.",
   homepage = "https://github.com/lenixdev/lenix/lua",
   license = "MIT"
}

dependencies = {
   "lua == 5.4"
}

build = {
   type = "builtin",
   modules = {
      lenix = "index.lua"
   }
}
