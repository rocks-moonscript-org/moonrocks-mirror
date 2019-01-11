package = "version"
version = "1.0.1-2"

source = {
  url = "https://github.com/Kong/version.lua/archive/1.0.1.tar.gz",
  dir = "version.lua-1.0.1"
}

description = {
   summary = "Version comparison library",
   detailed = [[
      Compares string based versions (dot separated numbers)
      as individual versions, against ranges, or in sets with multiple
      allowed and disallowed ranges/versions.
   ]],
   license = "Apache 2.0",
   homepage = "https://github.com/Kong/version.lua"
}
dependencies = {
   "lua >= 5.1",
}

build = {
   type = "builtin",
   modules = { version = "src/version.lua" }
}
