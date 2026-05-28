rockspec_format = "3.0"
package = "zen"
version = "0.1.1-1"

source = {
  url = "git+https://github.com/iruizsalinas/zen.git",
  tag = "v0.1.1",
}

description = {
  summary = "Lightweight schema validation for Lua",
  homepage = "https://github.com/iruizsalinas/zen",
  license = "MIT",
  labels = {"validation", "schema", "parsing"},
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    ["zen"]             = "zen/init.lua",
    ["zen.util"]        = "zen/util.lua",
    ["zen.base"]        = "zen/base.lua",
    ["zen.string"]      = "zen/string.lua",
    ["zen.number"]      = "zen/number.lua",
    ["zen.types"]       = "zen/types.lua",
    ["zen.object"]      = "zen/object.lua",
    ["zen.collections"] = "zen/collections.lua",
    ["zen.combinators"] = "zen/combinators.lua",
  },
}
