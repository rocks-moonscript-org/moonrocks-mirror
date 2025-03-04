rockspec_format = "3.0"
package = "op-sdk"
version = "0.0.5-1"
source = {
   url = "git+ssh://git@github.com/mrjones2014/op-lua-sdk.git",
   tag = "v0.0.5"
}
description = {
   summary = "Lua bindings to the 1Password CLI, with a configurable process executor backend.",
   homepage = "https://github.com/op-lua-sdk#README.md",
   license = "MIT License"
}
build = {
   type = "builtin",
   modules = {
      ["op-sdk"] = "./src/op-sdk.lua",
      ["op-sdk.backend.default"] = "./src/op-sdk/backend/default.lua",
      ["op-sdk.types"] = "./src/op-sdk/types.lua"
   }
}
test = {
   type = "busted"
}
