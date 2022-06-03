rockspec_format = "3.0"
package = "tonos-client"
version = "1.34.2-1"
source = {
   url = "file:///usr/src/tonos-client.zip",
   tag = "1.34.2"
}
description = {
   summary = "Lua bindings to TON OS SDK's Core Client Library",
   license = "MIT",
   labels = {
      "ton",
      "tonos"
   }
}
dependencies = {
   "lua ~> 5.1",
   "dkjson >= 2.5"
}
build = {
   type = "builtin",
   modules = {
      ["tonos.client"] = "build/generated/client.lua",
      tonosclua = {
         defines = {
            "NDEBUG"
         },
         incdirs = {
            "src/tonosclua/include"
         },
         libraries = {
            "ton_client"
         },
         sources = {
            "src/tonosclua/tonosclua.c"
         }
      }
   }
}
test_dependencies = {
   "busted",
   "lumen"
}
test = {
   type = "busted",
   flags = {
      "--run",
      "free"
   }
}
