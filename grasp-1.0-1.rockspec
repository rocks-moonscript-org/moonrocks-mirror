package = "grasp"
version = "1.0-1"
source  = {
  url = "git://github.com/daelvn/grasp",
  tag = "v1.0"
}
description = {
  summary = "A wrapper around lsqlite3",
  detailed = [[
    Grasp is a wrapper around the LuaSQLite3
    binding for sqlite3. Designed to be 
    fairly similar to akojo/clutch, 
    while having a more functional approach.
  ]],
  homepage = "https://github.com/daelvn/grasp"
}
dependencies = {
  "lsqlite3",
}
build = {
  type = "builtin",
  modules = {
    ["grasp.init"] = "grasp/init.lua",
    ["grasp.util"] = "grasp/util.lua",
  }
}