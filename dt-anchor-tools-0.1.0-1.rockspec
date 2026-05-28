package = "dt-anchor-tools"
version = "0.1.0-1"
source = {
  url = "file:///tmp/tmp.2J9fT1akVI/dt-anchor-tools-0.1.0.tar.gz"
}
description = {
  summary = "Resolve Dragon Traveler profile links by keyword",
  homepage = "https://dragontraveler.gg/",
  license = "MIT"
}
build = {
  type = "builtin",
  modules = {
    ["dt_anchor_tools"] = "dt_anchor_tools.lua"
  }
}
