-- FIXME: I do not understand how to limit install to a single lua file.

package = "elfutils"
version = "0.1-1"

source = {
  url = "https://github.com/zwizwa/elfutils-lua/archive/v0.1.zip",
  dir = "elfutils-lua-0.1",
}

description = {
  summary    = "Lua wrapper for elfutils",
  homepage   = "https://github.com/zwizwa/elfutils-lua",
  license    = "MIT/X11",
  maintainer = "Tom Schouten",
  detailed   = [[
  Lua wrappers for elfutils libelf and libdw plus Lua routines for convenient data structure access.
  Experimental.
  ]],
}

dependencies = {
  "lua >= 5.1"
}

build = {
  type = "builtin",

  modules = {
    ["elfutils_lua51"] = {
      sources = {
        "elfutils_lua51.c",
      },
      incdirs   = { ".", ".." },
      libdirs   = { },
      libraries = {"elf", "dw"},
    },
    elfutils = "init.lua",
  }

}
