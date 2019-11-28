package = "lua-semver"
version = "1.2.2-1"
source = {
   url = "git+https://github.com/Akionka/lua-semver.git",
   tag = "v1.2.2",
}

description = {
   summary = "An implementation of semantic versioning (semver.org 2.0.0) in Lua",
   detailed = [[
      See details in http://semver.org
   ]],
   license = "MIT",
   homepage = "https://github.com/Akionka/lua-semver"
}

dependencies = {
   "lua >= 5.1"
}

build = {
   type = "builtin",
   modules = {
      ["semver"] = "semver/semver.lua",
   }
}