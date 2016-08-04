package = "version"
version = "0.2-1"

source = {
  url = "https://github.com/Mashape/version.lua/archive/v0_2.tar.gz",
  dir = "version.lua-0_2"
}

description = {
   summary = "Version comparison library",
   detailed = [[
      Compares string based versions (dot separated numbers)
      as individual versions, against ranges, or in sets with multiple
      allowed and disallowed ranges/versions.
   ]],
   license = "MIT/X11",
   homepage = "https://github.com/Mashape/version.lua"
}
dependencies = {
   "lua >= 5.1",
}

build = {
   type = "builtin",
   modules = { version = "src/version.lua" } 
}
