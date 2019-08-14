package = "lua-emoji"
version = "0.1.0-1"
source = {
  url = "git+https://github.com/caffreyzheng/lua-emoji.git"
}
description = {
  summary = "Emoji convert to shortcodes",
  detailed = "emoji to shortcodes or shortcode to emoji",
  homepage = "https://github.com/caffreyzheng/lua-emoji",
  license = "MIT"
}
dependencies = {
  'lua >= 5.1'
}
build = {
  type = "builtin",
  modules = {
    ["lua-emoji"] = "src/lua-emoji/init.lua"
  }
}
