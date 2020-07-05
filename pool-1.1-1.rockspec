package = "pool"
version = "1.1-1"
source = {
   url = "git+https://github.com/josh-feng/pool",
   tag = "v1.1",
}
description = {
   summary = "Poorman's object-oriented lua (POOL)",
   detailed = [[
      POOL supports light OO programming.
   ]],
   homepage = "http://github.com/josh-feng/pool",
   license = "MIT",
   labels = {"object", "linux"}
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
