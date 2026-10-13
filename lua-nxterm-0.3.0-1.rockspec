rockspec_format = "3.0"
package = "lua-nxterm"
version = "0.3.0-1"
source = {
   url = "git+https://github.com/SamOrlando/lua-nxterm.git",
   tag = "v0.3.0",
}
description = {
   summary = "Terminal escape sequences, cursor control and colours in pure Lua",
   detailed = "ANSI/VT escape sequences for cursor movement, screen and line control, modes, mouse, OSC helpers (title, hyperlinks, progress) and SGR styling with 16/256/truecolor support, fluent chaining, %{} embedding and NO_COLOR handling.",
   homepage = "https://github.com/SamOrlando/lua-nxterm",
   license = "MIT",
   labels = { "terminal", "ansi", "color", "escape-sequences", "cli" },
}
dependencies = { "lua >= 5.1, < 5.5" }
build = {
   type = "builtin",
   modules = { nxterm = "nxterm.lua" },
   copy_directories = { "docs", "examples" },
}
test = { type = "command", command = "lua tests/test.lua" }
