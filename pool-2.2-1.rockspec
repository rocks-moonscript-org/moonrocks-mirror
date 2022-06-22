package = "pool"
version = "2.2-1"
source = {
   url = "git+https://github.com/josh-feng/pool",
   tag = "v2.2",
}
description = {
   summary = "Poorman's object-oriented lua (POOL)",
   detailed = [[
      POOL supports light OO programming.

      Log:
      2.x Inheritance syntax update. The coding would be easier.
      1.x Parent class is included in the template, more efficient, but harder to read.
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
