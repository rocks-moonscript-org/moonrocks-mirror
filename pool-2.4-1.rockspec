package = "pool"
version = "2.4-1"
source = {
   url = "git+https://github.com/josh-feng/pool",
   tag = "v2.4",
}
description = {
   summary = "Poorman's object-oriented lua (POOL)",
   detailed = [[
      POOL supports light OO programming.

      Log:
      - Parent class is included in the template, more efficient, but harder to read.
      - Inheritance syntax update. The coding would be easier.
      - Fix a minor bug to respect assigned __gc (other than the default).
      - Clean and wrap up examples.
      - reset template __metatable entry, or use as name if it's a string
   ]],
   homepage = "http://github.com/josh-feng/pool",
   license = "MIT",
   -- labels = {"object", "linux"}
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      pool = "src/pool.lua", -- class (POOL)
   },
   copy_directories = {"doc", "examples"}
}
