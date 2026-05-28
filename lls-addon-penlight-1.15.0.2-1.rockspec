rockspec_format = "3.0"
package = "lls-addon-penlight"
version = "1.15.0.2-1"
source = {
   url = "git+https://github.com/goldenstein64/pl-definitions",
   tag = "v1.15.0.2"
}
description = {
   summary = "LuaLS type definitions for Penlight",
   homepage = "https://github.com/goldenstein64/pl-definitions",
   license = "MIT"
}
dependencies = {
   "lls-addon-luafilesystem"
}
build = {
   type = "lls-addon"
}
