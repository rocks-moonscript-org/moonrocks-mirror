package = "lua-cb0r"
version = "0.1.1-1"
rockspec_format = "3.0"
source = {
   url = "git+https://github.com/Erutuon/lua-cb0r.git",
   tag = "v0.1.1"
}
description = {
   summary = "Deserialize basic CBOR types using the cb0r library",
   detailed = [[
       Quick deserialization with cb0r, a zero-allocation CBOR library.
       Requires the GNU C Compiler because it uses a GCC compiler extension to create a jump table.
   ]],
   homepage = "https://github.com/Erutuon/lua-cb0r",
   license = "MIT",
   maintainer = "Erutuon <5840197+Erutuon@users.noreply.github.com>"
}
supported_platforms = {
   "unix"
}
dependencies = {
   "lua >= 5.1, <= 5.4"
}
build = {
   type = "builtin",
   modules = {
      cb0r = {
         sources = { "src/lua-cb0r.c", "cb0r/src/cb0r.c" },
         incdirs = { "cb0r/src" }
      }
   },
   install = {
      lua = {
         ["cbor_iter"] = "share/cbor_iter.lua",
      }
   }
}
