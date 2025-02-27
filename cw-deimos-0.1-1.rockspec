rockspec_format = "3.0"
package = "cw-deimos"
version = "0.1-1"
source = {
   url = "git://github.com/cw-arena/deimos",
   tag = "0.1-1"
}
description = {
   summary = "Lua implementation of MARS",
   detailed = [[
        deimos is an implementation of MARS, the Memory Array Redcode
        Simulator. It supports the extended ICWS '94 Redcode standard
        used in pMARS and other simulators.
    ]],
   homepage = "http://github.com/cw-arena/deimos",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin"
}
test_dependencies = {
   "busted ~> 2.2.0-1"
}
test = {
   type = "busted",
   flags = {
      "--lpath=./lua/?.lua"
   }
}