package = "iter"
version = "0.0.1-1"
source = {
   url = "git://github.com/gordonbrander/iter",
   tag = "0.0.1"
}
description = {
   summary = "Map, filter and transform iterator functions",
   detailed = [[
  iter offers the familiar `map()`, `filter()`, etc but with a twist: rather than transforming tables, iter transforms the values in iterators. Transformations are lazy and no work is done until iterator is consumed (usually with a `for` loop).
  ]],
   homepage = "https://github.com/gordonbrander/iter",
   license = "MIT/X11"
}
dependencies = {
   "lua ~> 5.2"
}
build = {
   type = "builtin",
   modules = {
      iter = "iter.lua"
   }
}
