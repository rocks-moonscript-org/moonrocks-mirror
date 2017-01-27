package = "option"
version = "0.1.0-2"
source = {
   url = "git://github.com/Lawful-Lazy/lua-option.git",
   tag = "v0.1.0"
}
description = {
   summary = "Rust-inspired 'Optional' wrapper",
   detailed = [[
'Option' is a class that wraps around an object or nothing. Its
intention is to provide an idiomatic way to behave and use
optional arguments.]],
   homepage = "https://github.com/Lawful-Lazy/lua-option",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      option = "src/option.lua"
   },
   copy_directories = {
      "test"
   }
}
