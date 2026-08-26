package = "liblevenshtein"
version = "4.0.0rc4-1"
source = { url = "git+https://github.com/vinary-tree/liblevenshtein-rust.git", tag = "v4.0.0-rc.4-release.6" }
description = { summary = "Streaming Lua bindings for liblevenshtein", license = "Apache-2.0" }
dependencies = { "lua >= 5.4", "libdictenstein == 4.0.0rc4-1" }
build = {
  type = "builtin",
  modules = {
    ["vinary_tree.liblevenshtein"] = {
      sources = { "bindings/lua/src/liblevenshtein_lua.c" },
      incdirs = { "include", "../vinary-tree-interop/include", "../vinary-tree-interop/bindings/lua" },
      libraries = { "liblevenshtein" },
      libdirs = { "target/release" }
    }
  }
}
