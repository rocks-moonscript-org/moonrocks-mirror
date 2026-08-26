package = "libdictenstein"
version = "4.0.0rc4-2"
source = { url = "git+https://github.com/vinary-tree/libdictenstein.git", tag = "v4.0.0-rc.4-release.5" }
description = { summary = "Lua bindings for Vinary Tree dictionaries", license = "Apache-2.0" }
dependencies = { "lua >= 5.4" }
external_dependencies = {
  LIBDICTENSTEIN = { header = "libdictenstein.h", library = "libdictenstein" }
}
build = {
  type = "builtin",
  modules = {
    ["vinary_tree.libdictenstein"] = {
      sources = { "bindings/lua/src/libdictenstein_lua.c" },
      incdirs = { "$(LIBDICTENSTEIN_INCDIR)", "include", "bindings/lua/include" },
      libraries = { "libdictenstein" },
      libdirs = { "$(LIBDICTENSTEIN_LIBDIR)" }
    }
  }
}
