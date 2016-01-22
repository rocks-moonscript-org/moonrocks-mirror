package = "Transducers"
version = "0.0-1"
source = {
  url = "git://github.com/gordonbrander/transducers.lua",
  tag = "0.0-1"
}
description = {
  summary = "Composable list transformations inspired by Clojure transducers",
  detailed = [[
A re-interpretation of Clojure's Transducers for Lua. Transducers implement map, filter, take, etc in terms of reduce. You can use transducers to compose transformations for tables, iterators or anything that can be reduced.

Learn more about Transducers here: http://clojure.org/transducers.
  ]],
  homepage = "https://github.com/gordonbrander/transducers.lua",
  license = "MIT/X11"
}
dependencies = {
  "lua ~> 5"
}
build = {
  type = "builtin",
  modules = {
    ["transducers"] = "transducers.lua"
  }
}