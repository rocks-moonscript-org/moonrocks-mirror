rockspec_format = "3.0"
package = "vaporui"
version = "0.1-1"
source = { url = "git+https://github.com/tibocub/vaporUI.git", tag = "v0.1" }
description = {
  summary = "Lua binding for vaporUI: raw terminal input events and a double-buffered cell screen",
  detailed = "vaporui.open/poll/close for keys, mouse, resize and paste events, and vaporui.screen for drawing cells. Lua 5.1 to 5.4 and LuaJIT; Linux, macOS, Windows.",
  homepage = "https://github.com/tibocub/vaporUI",
  license = "MIT",
}
dependencies = { "lua >= 5.1" }
-- luarocks make, from this folder
build = {
  type = "builtin",
  modules = {
    vaporui = {
      sources = { "bindings/lua/src/lvaporui.c", "src/screen.c", "src/utf8.c", "src/input.c", "src/vt.c", "src/scancode.c", "src/keys.c",
                  "src/vtraw.c", "src/clipboard.c", "src/gpm.c", "src/platform/posix.c" },
      incdirs = { "include", "src" },
    },
  },
  platforms = {
    windows = { modules = { vaporui = {
      sources = { "bindings/lua/src/lvaporui.c", "src/screen.c", "src/utf8.c", "src/input.c", "src/vt.c", "src/scancode.c", "src/keys.c",
                  "src/vtraw.c", "src/clipboard.c", "src/winkeys.c", "src/platform/win32.c" },
      incdirs = { "include", "src" },
    } } },
  },
}
