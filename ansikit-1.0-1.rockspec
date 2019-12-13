package = "ansikit"
version = "1.0-1"
source  = {
  url = "git://github.com/daelvn/ansikit",
  tag = "v1.0"
}
description = {
  summary = "Use ANSI escape sequences easily.",
  detailed = [[
    ansikit lets you use ANSI escape sequences
    for color, text styling, cursor movement
    and other functionality in an easy to use
    library.
  ]],
  homepage = "https://github.com/daelvn/ansikit"
}
dependencies = {
  "typical",
  "guardia >= 3.0.3"
}
build = {
  type = "builtin",
  modules = {
    ["ansikit.color"] = "ansikit/color.lua",
    ["ansikit.cursor"] = "ansikit/cursor.lua",
    ["ansikit.page"] = "ansikit/page.lua",
    ["ansikit.paint"] = "ansikit/paint.lua",
    ["ansikit.palette"] = "ansikit/palette.lua",
    ["ansikit.sequence"] = "ansikit/sequence.lua",
    ["ansikit.style"] = "ansikit/style.lua",
    ["ansikit.text"] = "ansikit/text.lua"
  }
}