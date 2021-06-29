rockspec_format = "3.0"
package = "ldk-props"
version = "0.1.0-1"
source = {
   url = "git://github.com/dwenegar/ldk-props.git",
   tag = "v0.1.0"
}
description = {
   summary = "LDK - Table Checks",
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
      ["ldk.props"] = "src/ldk/props.lua"
   }
}
test = {
   type = "busted"
}
