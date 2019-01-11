package = "version"
version = "1.0.1-1"

source = {
  url = "git://github.com/kong/version.lua",
  tag = "1.0.1"
}

description = {
   summary = "Version comparison library",
   detailed = [[
      Compares string based versions (dot separated numbers)
      as individual versions, against ranges, or in sets with multiple
      allowed and disallowed ranges/versions.
   ]],
   license = "Apache 2.0",
   homepage = "https://github.com/Mashape/version.lua"
}
dependencies = {
   "lua >= 5.1",
}

build = {
   type = "builtin",
   modules = { version = "src/version.lua" }
}
