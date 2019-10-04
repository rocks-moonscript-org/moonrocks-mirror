package = "pool"
version = "1.0-1"
source = {
   -- url = "git+https://github.com/josh-feng/pool/archive/1.0.tar.gz",
   url = "git+https://github.com/josh-feng/pool",
   -- md5 = "",
   -- dir = "pool-1.0",
}
description = {
   summary = "Poorman's object-oriented lua (POOL) and Reduced Markup Language (RML) support.",
   detailed = [[
      POOL supports light OO programming.
      RML works like a punctuation system for data serializtion.
   ]],
   homepage = "http://github.com/josh-feng/pool",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1" -- , < 5.4
}
build = {
   type = "builtin",
   modules = {
      pool = "src/pool.lua", -- class (POOL)
      lrm = "src/lrm.lua", -- Reduced Markup Language (RML)
      lrps = "src/lrps.lua", -- RML script(lua) parser
      lrp = { -- RML c parser: c module written in C/++
         sources = {"src/lrp.cpp",},
         defines = {},
         libraries = {},
         incdirs = {"src"},
         libdirs = {"src"}
      }
   },
   copy_directories = {"doc", "test"}
}
