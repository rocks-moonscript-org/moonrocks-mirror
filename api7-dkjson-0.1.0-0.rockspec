package = "api7-dkjson"
version = "0.1.0-0"
source = {
  url = "https://github.com/api7/test-toolkit",
  branch = "0.1.0",
}
description = {
  summary = "A fork of dkjson",
  homepage = "https://github.com/api7/test-toolkit",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1, < 5.4"
}
build = {
  type = "builtin",
  modules = {
    dkjson = "json.lua"
  }
}
