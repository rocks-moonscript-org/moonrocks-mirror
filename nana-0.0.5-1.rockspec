package = "nana"
version = "0.0.5-1"
source = {
   url = "git://github.com/horan-geeker/nana",
   tag = "v0.5.0",
}
description = {
   summary = "http api server framework",
   detailed = [[
        Nana is a http restful api framework written in Lua which need be used in openresty platform and it's designed reference Laravel framework styles
   ]],
   homepage = "https://github.com/horan-geeker/nana",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1, < 5.4",
}
build = {
    type = "builtin"
}
