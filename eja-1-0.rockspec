package = "eja"
version = "1-0"
source = {
 url = "git+https://github.com/eja/eja",
}
description = {
 summary = "A micro http server that can serve dynamic generated content.",
 homepage = "https://github.com/eja/eja",
 license = "GPL"
}
dependencies = {
 "lua >= 5.2",
 "luaposix"
}
build = {
   type = "none",
   modules = {
     eja = "eja.lua",
   },
   install = {
    bin = {
     eja = "eja.lua",
    }
   }
}
