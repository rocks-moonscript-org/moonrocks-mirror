rockspec_format = "3.0"
package = "ldk-shapes"
version = "0.1.0-1"
source = {
   url = "git://github.com/dwenegar/ldk-shapes.git",
   tag = "v0.1.0"
}
description = {
   summary = "Table Shape Validation for Lua",
   license = "MIT",
   maintainer = "simone.livieri@gmail.com"
}
dependencies = {
   "lua >= 5.4",
   "ldk-core >= 0.1.0",
   "ldk-checks >= 0.1.0"
}
build = {
   modules = {
      ["ldk.shapes"] = "src/ldk/shapes.lua"
   }
}
test = {
   type = "busted"
}
