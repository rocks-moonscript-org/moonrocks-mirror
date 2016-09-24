package = "native"
version = "0.1.0-1"
local v = version:gsub("%-%d", "")
source = {
   url = "git://github.com/xpol/lua-native",
   tag = "v"..v
}
description = {
   summary = "Convert between UTF-8 and Windows system encoding.",
   detailed = [[
        Convert strings between UTF-8 and Windows system encoding.

        For Mac/Linux... it just return the 1st argument you passed.

        Provided API:

        - `native.decode()` decode Windows system encoded string to UTF-8.
        - `native.encode()` encode UTF-8 string to Windows system encoding.
  ]],
   homepage = "https://github.com/xpol/lua-native",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
       native = {
           sources = { "native.c" },
       }
   }
}
