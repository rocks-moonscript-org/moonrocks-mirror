---@diagnostic disable: lowercase-global
-- luacheck: no global

package = "proto"
version = "0.1.0-0"
source = {
   url = "git+ssh://git@github.com/lua-rocks/proto.git"
}
description = {
   homepage = "https://github.com/lua-rocks/proto",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      example = "example.lua",
      proto = "proto.lua"
   }
}
