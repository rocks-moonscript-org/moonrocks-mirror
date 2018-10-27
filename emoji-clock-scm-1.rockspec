package = "emoji-clock"
version = "scm-1"
source = {
  url = "git+https://github.com/fralonra/lua-emoji-clock"
}
description = {
  summary = "Display time in a emoji clock",
  detailed = "Display time in a emoji clock",
  homepage = "https://github.com/fralonra/lua-emoji-clock",
  license = "MIT"
}
dependencies = {
  'lua >= 5.1'
}
build = {
  type = "builtin",
  modules = {
    emoji_clock = "src/emoji-clock/init.lua"
  }
}
