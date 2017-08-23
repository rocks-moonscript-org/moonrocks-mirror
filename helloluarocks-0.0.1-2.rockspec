package = "HelloLuarocks"
version = "0.0.1-2"
source = {
   url = "http://github.com/monada99/tdd_kata"
}
description = {
   summary = "summary",
   homepage = "*** please enter a project homepage ***",
   license = "MIT"
}
dependencies = {
   "lua ~> 5.1"
}
build = {
   type = "builtin",
   modules = {
      calc = "calc.lua",
      test_calc = "test_add.lua"
   }
}
