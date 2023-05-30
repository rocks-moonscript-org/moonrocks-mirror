package = "ltest"
version = "1.0-1"
source = {
   url = "https://github.com/shawnjb/ltest/releases/download/v1.0-1/ltest-1.0-1.tar.gz"
}
dependencies = {
   "lua >= 5.1, < 5.5"
}
build = {
   type = "builtin",
   modules = {
      ["ltest"] = "ltest.lua"
   }
}
description = {
   summary = "ltest - a simple Lua testing framework",
   detailed = "ltest is a simple Lua testing framework that allows you to create test cases and groups, and run them as a queue.",
   license = "MIT"
}
