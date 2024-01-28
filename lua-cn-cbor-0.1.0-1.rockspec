package = "lua-cn-cbor"
version = "0.1.0-1"
rockspec_format = "3.0" -- so that git submodule is initialized
source = {
   url = "git+https://github.com/Erutuon/lua-cn-cbor",
   tag = "v0.1.0"
}
description = {
   summary = "Lua bindings to cn-cbor",
   homepage = "https://github.com/Erutuon/lua-cn-cbor",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      cncbor = {
         sources = { "lua-cn-cbor.c", "cn-cbor/src/cn-cbor.c", "cn-cbor/src/cn-error.c", "cn-cbor/src/cn-get.c" },
         incdirs = { "cn-cbor/include", "lua-compat-5.3" }
      }
   }
}
