package = "stringio"
version = "1.0-1"
source = {
   url = "http://stevedonovan.github.com/files/stringio.lua",
   dir = "."
}
description = {
   summary = "Reading and writing Lua strings as file objects",
   detailed = [[
    stringio.open() gives you a file-like object which has Lua 5.2 compatible
    methods like read() and lines(); stringio.create() gives you an object
    with a write() method, and a value() method for the created string.
   ]],
   homepage = 'http://stevedonovan.github.com/Penlight/api/modules/pl.stringio.html',
   license = "MIT/X11",
   maintainer = "steve.j.donovan@gmail.com",
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
        stringio = "stringio.lua" ,
   }
}
