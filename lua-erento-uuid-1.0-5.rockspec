package = "lua-erento-uuid"
version = "1.0-5"
source = {
  url = "git://github.com/erento/lua-resty-uuid.git"
}
description = {
  summary = "LuaJIT FFI-based UUID library.",
  detailed = "LuaJIT FFI bindings for libuuid, a DCE compatible Universally Unique Identifier library.",
  homepage = "https://github.com/erento/lua-resty-uuid",
  maintainer = "Erento <developers@erento.com>",
  license = "BSD"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
    modules = {
      ["resty.uuid"] = "lib/resty/uuid.lua",
      libuuid = {
        sources = {},
        libraries = { "uuid" }
      }
  }
}
