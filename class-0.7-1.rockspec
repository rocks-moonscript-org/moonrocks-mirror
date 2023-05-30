package = "class"
version = "0.7-1"
source = {
   url = "git+https://github.com/javalikescript/luajls.git",
   tag = "0.7.1"
}
description = {
   summary = "class creation with inheritance and constructor",
   detailed = [[
      This module provides helper functions to create and work with classes.
      A class can implement prototype methods shared among all its instances.
      A class can implement an initialize method that will be called for new instances.
      A class can inherit from another class, prototype methods are inherited by the subclasses.
   ]],
   homepage = "https://github.com/javalikescript/luajls",
   license = "MIT"
}
dependencies = {
   "lua >= 5.4"
}
build = {
   type = "builtin",
   modules = {
      ["jls.lang.class"] = "jls/lang/class.lua",
   }
}
