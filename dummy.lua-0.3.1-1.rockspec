rockspec_format = "3.0"
package = "dummy.lua"
version = "0.3.1-1"
source = {
  url = "git+https://github.com/MunifTanjim/dummy.lua.git",
  tag = "0.3.1",
}
description = {
  summary = "Dummy Package to test LuaRocks!",
  detailed = [[
    Dummy Package to test LuaRocks!
  ]],
  license = "MIT",
  homepage = "https://github.com/MunifTanjim/dummy.lua",
  issues_url = "https://github.com/MunifTanjim/dummy.lua/issues",
  maintainer = "Munif Tanjim (https://muniftanjim.dev)",
  labels = {},
}
build = {
  type = "builtin",
  modules = {
    ["dummy"] = "dummy/init.lua",
  },
}
