-- SPDX-FileCopyrightText: 2026 Blackcat Informatics Inc. <paudley@blackcatinformatics.ca>
-- SPDX-License-Identifier: MIT OR Apache-2.0

package = "gmeow-gts"
version = "1.0.0rc1-1"

source = {
  url = "git+https://github.com/Blackcat-Informatics/gmeow-gts.git",
  tag = "lua-v1.0.0rc1"
}

description = {
  summary = "LuaJIT FFI wrapper for the GTS C ABI",
  detailed = [[
    Thin LuaJIT FFI bindings over the Rust-backed libgts C ABI. The module
    copies and frees C ABI buffers/errors internally and exposes Lua strings,
    tables, and structured error objects to callers. This source-only rock
    requires LuaJIT FFI and a separately installed libgts shared library,
    provided through GTS_LIBGTS or the platform dynamic loader.
  ]],
  homepage = "https://blackcatinformatics.ca/projects/gts",
  license = "MIT OR Apache-2.0"
}

dependencies = {
  "lua >= 5.1, < 5.2"
}

build = {
  type = "builtin",
  modules = {
    ["gmeow.gts"] = "lua/gmeow/gts.lua"
  },
  copy_directories = {}
}
