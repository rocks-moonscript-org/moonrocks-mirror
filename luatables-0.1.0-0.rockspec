package = "LuaTables"
version = "0.1.0-0"
source = {
  url = "git://github.com/f4z3r/luatables.git",
   tag = "v0.1.0",
}
description = {
  summary = "",
  detailed = [[
   ]],
  homepage = "https://github.com/f4z3r/luatables/tree/main",
  license = "MIT",
}
dependencies = {
  "lua == 5.1",
  "utf8 >= 1.2",
  "luatext >= 1.1",
}
build = {
  type = "builtin",
  modules = {
    luatext = "./luatables.lua",
  },
}

