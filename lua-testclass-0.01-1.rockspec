package = "lua-TestClass"
version = "0.01-1"

source = {
   url = "https://github.com/ichesnokov/lua-TestClass/archive/v0.01.zip",
   dir = "lua-TestClass-0.01",
}

description = {
   summary = "xUnit-style testing framework for Lua",
   homepage = "https://github.com/ichesnokov/lua-TestClass",
   license = "MIT/X11"
}

dependencies = {
    "lua >= 5.1",
}

build = {
   type = "builtin",
   modules = {
      ["Test.Class"] = "lib/Test/Class.lua",
      ["File.Find"] = "lib/File/Find.lua",
   }
}
