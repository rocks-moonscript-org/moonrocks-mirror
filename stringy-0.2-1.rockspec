package = "stringy"
version = "0.2-1"
source = {
   url = "http://bpbio.googlecode.com/files/stringy-0.2.tar.gz" 
}
description = {
   summary = "C extension for fast string methods",
   detailed = [[
    Includes fast methods for endswith, startswith, split and strip.  
    Implementations of split and strip from the wiki and book. This 
    was implemented as a learning exercise. Additions are welcome if
    the library is kept simple. Usage is:

    > require "stringy" 
    > = stringy.strip(" asdf ")
    asdf

    > = table.concat(stringy.split("aXbXc", "X"), "|")
    a|b|c

    > = stringy.startswith("asdf", "as")
    true
    > = stringy.endswith("asdf", "as")
    false
   ]],
   homepage = "http://hackmap.blogspot.com",
   license = "MIT/X11" 
}
dependencies = {
   "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
       stringy = "stringy.c" 
    }
}
