package = "lua-obfuscator.nvim"
version = "1.0.1-1"
source = {
   url = "git+ssh://git@github.com/kdssoftware/lua-obfuscator.nvim.git",
   tag = "v1.0.1"
}
description = {
   summary = "Lua obfuscator plugin for Neovim",
   detailed = [[

## Commands
- `LuaObfuscatorCurrent` : obfuscates the current buffer
]],
   homepage = "github.com/kdssoftware/lua-obfuscator.nvim",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      ["lua-obfuscator"] = "lua/lua-obfuscator.lua",
      ["lua-obfuscator.api"] = "lua/lua-obfuscator/api.lua",
      ["lua-obfuscator.call"] = "lua/lua-obfuscator/call.lua",
      ["lua-obfuscator.json"] = "lua/lua-obfuscator/json.lua"
   },
   copy_directories = {
      "doc"
   }
}
