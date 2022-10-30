package = "telegraph"
version = "0.1-1"

source = {
 url = "git://github.com/1zilla/telegraph.git",
 branch = "main"
}

description = {
 summary = "Lua wrapper for Telegraph API",
 detailed = [[
Lua/OpenResty wrapper for Telegraph API
]],
 homepage = "https://github.com/1zilla/telegraph",
 license = "MIT"
}

build = {
 type = "builtin",
 modules = {
  ["telegraph"] = "telegraph.lua",
 }
}