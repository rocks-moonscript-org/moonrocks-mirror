rockspec_format = "3.0"
package = "corequests"
version = "1.0.0-1"
source = {
   url = "git://github.com/THE-FYP/lua-corequests.git",
   tag = "v1.0.0"
}
description = {
   summary = "Asynchronous HTTP requests with friendly interface",
   detailed = [[The combination of lua-requests and copas libraries - asynchronous and simple to use HTTP requests.]],
   homepage = "https://github.com/THE-FYP/lua-corequests",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1, < 5.4",
   "lua-requests",
   "fyp/copas",
}
build = {
   type = "builtin",
   modules = {
      corequests = "corequests.lua"
   }
}
