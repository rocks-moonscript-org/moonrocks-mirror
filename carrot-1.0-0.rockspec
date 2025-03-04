package = "carrot"
version = "1.0-0"
source = {
  url = "git://github.com/pouyanh/carrot",
}
description = {
  maintainer = "Pouyan Heyratpour <pouyan@janstun.com>",
  homepage = "https://pouyanh.github.io/carrot",
  summary = "Carrot awesomeWM personalization application",
  detailed = [[
    * Do you want to have a light and geeky desktop environment, full of tiny widgets, on your linux?
    * Have you ever wondered if you could configure awesomeWM without learning lua and reading awful documents?

    Thanks God, for creating Carrot
  ]],
  license = "GPL"
}
dependencies = {
  "lua >= 5.1"
}
supported_platforms = {
  "linux"
}
build = {
  type = "builtin",
  modules = {
    ["carrot"] = "init.lua",
    ["carrot.root"] = "root.lua",
    ["carrot.menus"] = "menus.lua",
    ["carrot.utils"] = "utils.lua",
    ["carrot.errors"] = "errors.lua",
    ["carrot.themes"] = "themes.lua",
    ["carrot.clients"] = "clients.lua",
    ["carrot.configs"] = "configs.lua",
    ["carrot.screens"] = "screens.lua",
  }
}
