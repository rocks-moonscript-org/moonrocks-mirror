package = "tblr"
 version = "1.0.0-1"
 source = {
    url = "git+https://github.com/epicfilemcnulty/lua-tblr.git",
    tag = "v1.0.0"
 }
 description = {
    summary = "A module to create, sort and print out (aligned and optionally styled) table data",
    homepage = "https://github.com/epicfilemcnulty/lua-tblr.git",
    license = "CC0"
 }
 dependencies = {
    "lua >= 5.3",
 }
 build = {
    type = "builtin",
    modules = {
       tblr = "src/tblr.lua",
       plterm = "src/plterm.lua",
    }
}
