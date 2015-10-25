package = "wespike"
 version = "0.0-1"
 source = {
    url = ""
 }
 description = {
    summary = "coming soon",
    detailed = [[
       wespike lib
    ]],
    homepage = "",
    license = "MIT"
 }
 dependencies = {
    "lua ~> 5.1"
 }
 build = {
    type = "builtin",
    modules = {
        base = "src/base.lua"
    }
 }