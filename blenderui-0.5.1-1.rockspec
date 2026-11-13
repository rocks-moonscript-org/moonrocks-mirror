-- LuaRocks package for BUI's Lua binding: `luarocks install blenderui`, then `require("bui")`.
-- The version below is moved with every release by tools/bump_version.py (which also renames this file).
-- SPDX-License-Identifier: GPL-2.0-or-later
rockspec_format = "3.0"
package = "blenderui"
version = "0.5.1-1"

source = {
  url = "git+https://github.com/ppmpreetham/BUI.git",
  tag = "v0.5.1",
}

description = {
  summary = "Blender's UI as a library: widgets, layout and a GPU renderer for Lua",
  detailed = [[
    BUI is Blender's own UI toolkit, decoupled from Blender. This rock builds the C kit and the
    loadable module _bui, and installs it with the bui.lua wrapper: require("bui") gives every
    widget and event, as bui-lua does. It builds with CMake and a C and C++20 compiler (on Linux with the X11 headers, for native windows); Lua 5.4 only.
  ]],
  homepage = "https://github.com/ppmpreetham/BUI",
  license = "GPL-2.0-or-later",
  labels = { "gui", "ui", "widgets", "blender" },
}

dependencies = {
  "lua >= 5.4, < 5.5",
}

build = {
  type = "cmake",
  variables = {
    CMAKE_BUILD_TYPE = "Release",
    BUI_LUA_ROCK = "ON",
    BUI_BUILD_LUA_BINDINGS = "ON",
    BUI_BUILD_PYTHON_BINDINGS = "OFF",
    BUI_BUILD_IMGUI = "OFF",
    BUI_BUILD_TESTS = "OFF",
    LUA_INCLUDE_DIR = "$(LUA_INCDIR)",
    LUADIR = "$(LUADIR)",
    LIBDIR = "$(LIBDIR)",
  },
  -- Windows links the module against the Lua import library; elsewhere the host program provides Lua
  platforms = {
    windows = { variables = { LUA_LIBRARY = "$(LUA_LIBDIR)/$(LUALIB)" } },
  },
}
