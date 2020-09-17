package = "stringy"
version = "0.7-0"
source = {
   url = "https://github.com/mdeneen/lua-stringy/archive/v0.7-0.tar.gz",
   dir = "lua-stringy-0.7-0"
}
description = {
   summary = "C extension for fast string methods",
   detailed = [[
    Includes fast methods for endswith, startswith, split, strip, find,
    join and count.  Implementations of split and strip from the wiki and book. 
    Implementation of find and count use python's fastsearch.
    Usage is:

    > stringy = require "stringy" 
    > = stringy.strip(" asdf ")
    asdf

    > = table.concat(stringy.split("aXbXc", "X"), "|")
    a|b|c

    > = stringy.startswith("asdf", "as")
    true
    > = stringy.endswith("asdf", "as")
    false

    > string.join = stringy.join
    > = ('_'):join(1, 2, 3)
    1_2_3
   ]],
   homepage = "github.com/mdeneen/lua-stringy",
   license = "MIT/X11" 
}
dependencies = {
   "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
       stringy = {
          sources = {"stringy/stringy.c"},
          incdirs = {"stringy/"},
     }
  }
}
