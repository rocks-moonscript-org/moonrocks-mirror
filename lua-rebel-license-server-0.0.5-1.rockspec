package = "lua-rebel-license-server"
version = "0.0.5-1"
supported_platforms = {"linux", "macosx"}
source = {
   url = "git://github.com/anjia0532/lua-rebel-license-server",
   tag = "v0.0.5"
}
description = {
   summary = "Jrebel & XRebel License Server for Lua(support Jrebel,JRebel for Android,XRebel Local)",
   detailed = [[
      lua-rebel-license-server - Jrebel & XRebel License Server for Lua(support Jrebel,JRebel for Android,XRebel Local).
   ]],
   homepage = "https://github.com/anjia0532/lua-rebel-license-server",
   license = "Apache License 2.0"
}
dependencies = {
   "lua >= 5.1",
   "lua-resty-rsa >= 1.1.1"
}
build = {
   type = "builtin",
   modules = {
      ["resty.jrebel-license"] = "lib/resty/jrebel-license.lua"
   }
}
