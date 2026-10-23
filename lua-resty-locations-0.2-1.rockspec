package = "lua-resty-locations"
version = "0.2-1"
source = {
   url = "git+https://github.com/hamishforbes/lua-resty-locations.git",
   tag = "v0.2"
}
description = {
   summary = "Lua library implementing nginx style location uri matching.",
   homepage = "https://github.com/hamishforbes/lua-resty-locations",
   license = "MIT",
   maintainer = "Hamish Forbes"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["resty.locations"] = "lib/resty/locations.lua"
   }
}
