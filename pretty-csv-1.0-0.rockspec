package = "pretty-csv"
version = "1.0-0"
source = {
  url = "git+https://github.com/uriid1/lua-pretty-csv.git",
}
description = {
  summary = "Tiny lua CSV Parser/Render",
  homepage = "https://github.com/uriid1/lua-pretty-csv",
  license = "MIT"
}
dependencies = {
  "lua >= 5.3"
}
build = {
  type = "builtin",
  modules = {
    ["pretty-csv"] = "pretty-csv.lua"
  }
}
