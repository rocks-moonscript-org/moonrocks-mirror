package = "Multimethod"
version = "0.0-1"
source = {
  url = "git://github.com/gordonbrander/multimethod.lua",
  tag = "0.0-1"
}
description = {
  summary = "Multiple dispatch functions for Lua",
  detailed = [[
Multimethods brings multiple dispatch functions to Lua (https://en.wikipedia.org/wiki/Multiple_dispatch).

Multimethods give you late-binding runtime polymorphism... in other words, you can implement multiple versions of the same function for different combinations of arguments.

Inspired by Clojure's approach (http://clojure.org/multimethods), a multimethod is a combination of a dispatching function, and one or more methods. The dispatching function gets to choose who gets called and in what circumstance. This is extremely flexible: you can dispatch on any feature or combination of features that you can derive from the arguments.
  ]],
  homepage = "https://github.com/gordonbrander/multimethod.lua",
  license = "MIT/X11"
}
dependencies = {
  "lua ~> 5"
}
build = {
  type = "builtin",
  modules = {
    ["multimethod"] = "multimethod.lua"
  }
}