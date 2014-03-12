package = "lazybag"
version = "1.0.0-0"

source = {
   url = "http://cloud.github.com/downloads/nrk/lazybag/lazybag-1.0.0-0.tar.gz",
   md5 = "6a6ae7d21a20eed96e351c4480cd913f"
}

description = {
   summary = "Plain Lua tables with lazily-initialized field values.",
   detailed = [[
        Lazybag is a tiny Lua library that makes it easy to create table
        objects with fields that are lazily initialized upon first access
        using functions acting as value initializers.
   ]],
   homepage = "http://github.com/nrk/lazybag",
   license = "MIT/X11"
}

dependencies = {
   "lua >= 5.1",
}

build = {
   type = "none",
   install = {
      lua = {
         lazybag = "src/lazybag.lua"
      }
   }
}
