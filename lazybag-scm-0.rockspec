package = "lazybag"
version = "scm-0"

source = {
   url = "git://github.com/nrk/lazybag.git"
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
