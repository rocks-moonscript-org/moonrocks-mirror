-- luacheck: no global

package = "proto"
version = "0.2.2-0"
source = {
  url = "git+ssh://git@github.com/lua-rocks/proto.git",
}
description = {
  homepage = "https://github.com/lua-rocks/proto",
  license = "MIT",
}
build = {
  type = "builtin",
  modules = {
    proto = "init.lua",
  },
}
