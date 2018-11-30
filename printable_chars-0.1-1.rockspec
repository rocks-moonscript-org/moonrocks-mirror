package = "printable_chars"
version = "0.1-1"
source = {
   url = "https://github.com/drmargarido/printable_chars.git",
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
