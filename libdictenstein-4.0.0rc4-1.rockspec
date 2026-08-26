package = "libdictenstein"
version = "4.0.0rc4-1"
source = { url = "git+https://github.com/vinary-tree/libdictenstein.git", tag = "v4.0.0-rc.4-release.4" }
description = { summary = "Lua bindings for Vinary Tree dictionaries", license = "Apache-2.0" }
dependencies = { "lua >= 5.4" }
build = {
  type = "builtin",
  modules = {
    ["vinary_tree.libdictenstein"] = {
      sources = { "bindings/lua/src/libdictenstein_lua.c" },
      incdirs = { "include", "bindings/lua/include" },
      libraries = { "libdictenstein" },
      libdirs = { "target/release" }
    }
  }
}
