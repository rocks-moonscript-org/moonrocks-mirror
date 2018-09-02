package = "binarystream"
version = "1.0-2"
source = {
   url = "git://github.com/Tarik02/luarock-binarystream",
   tag = "v1.0-2",
}
description = {
   summary = "Lua library to work with binary data (needs ffi support)",
   detailed = [[
      Lua library to work with binary data.
      Allows to write and read:
       - signed and unsigned numbers (8, 16, 32, 64 bits)
       - floating point numbers (32, 64 bits)
       - strings (cstrings with zero end, prefixed by length or any custom ones)
       - other streams
   ]],
   homepage = "https://github.com/Tarik02/luarock-binarystream",
   license = "MIT",
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
       binarystream = "src/binarystream.lua",
   },
}
