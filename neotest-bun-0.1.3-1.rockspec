package = "neotest-bun"
version = "0.1.3-1"
source = {
  url = "git+https://github.com/jutonz/neotest-bun",
  tag = "v0.1.3",
}
description = {
  summary = "A neotest adapter for bun",
  homepage = "https://github.com/jutonz/neotest-bun",
  license = "MIT"
}
dependencies = {
  "lua ~> 5.1",
}
build = {
  type = "builtin",
  modules = {
    ["neotest-bun.config"] = "lua/neotest-bun/config.lua",
    ["neotest-bun.init"] = "lua/neotest-bun/init.lua",
    ["neotest-bun.main"] = "lua/neotest-bun/main.lua",
    ["neotest-bun.state"] = "lua/neotest-bun/state.lua",
    ["neotest-bun.util.bun"] = "lua/neotest-bun/util/bun.lua",
    ["neotest-bun.util.log"] = "lua/neotest-bun/util/log.lua",
    ["neotest-bun.vendor.xml2lua.xml2lua"] = "lua/neotest-bun/vendor/xml2lua/xml2lua.lua",
    ["neotest-bun.vendor.xml2lua.XmlParser"] = "lua/neotest-bun/vendor/xml2lua/XmlParser.lua",
    ["neotest-bun.vendor.xml2lua.xmlhandler.tree"] = "lua/neotest-bun/vendor/xml2lua/xmlhandler/tree.lua"
  },
  copy_directories = {
    "doc",
    "tests"
  }
}
