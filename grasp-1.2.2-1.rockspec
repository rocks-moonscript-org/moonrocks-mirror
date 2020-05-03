build = {
  modules = {
    ["grasp.init"] = "grasp/init.lua",
    ["grasp.query"] = "grasp/query.lua",
    ["grasp.util"] = "grasp/util.lua"
  },
  type = "builtin"
}
dependencies = {
  "lsqlite3"
}
description = {
  detailed = "Grasp is a wrapper around the LuaSQLite3 binding for sqlite3. Designed to be  fairly similar to akojo/clutch,  while having a more functional approach.\n",
  homepage = "https://github.com/daelvn/grasp",
  summary = "A wrapper around lsqlite3"
}
package = "grasp"
rockspec_format = "3.0"
source = {
  tag = "v1.2.2",
  url = "git://github.com/daelvn/grasp"
}
version = "1.2.2-1"
