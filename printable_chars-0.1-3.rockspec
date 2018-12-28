package = "printable_chars"
version = "0.1-3"
source = {
   url = "git://github.com/drmargarido/printable_chars",
   tag = "v0.1"
}
description = {
   homepage = "https://github.com/drmargarido/printable_chars.git",
   license = "MIT",
   summary = "Functions to get the ascii printable chars from a byte string."
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      printable_chars = "printable_chars.lua"
   }
}
