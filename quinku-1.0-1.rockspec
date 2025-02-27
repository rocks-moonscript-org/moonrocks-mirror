package = "quinku"
version = "1.0-1"
source = {
   url = "https://mid.net.ua/quinku-1.0.lua"
}
description = {
   summary = "Small and capable HTTP 1.1 server",
   detailed = [[Minimalist, opinionated HTTP server, with support for HTTPS and multipart forms]],
   homepage = "https://mid.net.ua/quinku.html",
   license = "BSD0"
}
dependencies = {
   "lua >= 5.1, <= 5.4",
   "luasocket"
}
build = {
   type = "builtin",
   modules = {
      quinku = "quinku-1.0.lua",
   }
}
