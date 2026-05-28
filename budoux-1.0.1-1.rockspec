package = "budoux"
version = "1.0.1-1"
source = {
  url = "git+https://github.com/delphinus/budoux.lua.git",
  tag = "v1.0.1",
}
description = {
  summary = "A Lua port of BudouX — ML-powered line break organizer for CJK text",
  detailed = [[
    BudouX uses a compact machine-learning model to find natural word
    boundaries in CJK text, producing more readable line breaks than
    character-level splitting. Supports Japanese, Simplified Chinese,
    Traditional Chinese, and Thai.
  ]],
  homepage = "https://github.com/delphinus/budoux.lua",
  license = "Apache-2.0",
}
dependencies = {
  "lua >= 5.1",
}
build = {
  type = "builtin",
  modules = {
    ["budoux"] = "lua/budoux/init.lua",
    ["budoux.models.ja"] = "lua/budoux/models/ja.lua",
    ["budoux.models.zh_hans"] = "lua/budoux/models/zh_hans.lua",
    ["budoux.models.zh_hant"] = "lua/budoux/models/zh_hant.lua",
    ["budoux.models.th"] = "lua/budoux/models/th.lua",
  },
}
