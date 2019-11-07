package = "sonata"
version = "0.9-1"
source = {
   url = "git://github.com/mikhel1984/sonata"
}
description = {
   summary = "Mathematical program.",
   detailed = "Sonata Lua Calculus is a Lua based program for mathematical computations. It is also a library of objects and functions for solving different mathematical tasks.",
   homepage = "https://github.com/mikhel1984/sonata",
   license = "GPL"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      sonata = "sonata.lua",
      ['sonatalib.array'] = "sonatalib/array.lua",
      ['sonatalib.bigint'] = "sonatalib/bigint.lua",
      ['sonatalib.complex'] = "sonatalib/complex.lua",
      ['sonatalib.const'] = "sonatalib/const.lua",
      ['sonatalib.files'] = "sonatalib/files.lua",
      ['sonatalib.gnuplot'] = "sonatalib/gnuplot.lua",
      ['sonatalib.graph'] = "sonatalib/graph.lua",
      ['sonatalib.help'] = "sonatalib/help.lua",
      ['sonatalib.main'] = "sonatalib/main.lua",
      ['sonatalib.matrix'] = "sonatalib/matrix.lua",
      ['sonatalib.numeric'] = "sonatalib/numeric.lua",
      ['sonatalib.polynom'] = "sonatalib/polynom.lua",
      ['sonatalib.quaternion'] = "sonatalib/quaternion.lua",
      ['sonatalib.rational'] = "sonatalib/rational.lua",
      ['sonatalib.special'] = "sonatalib/special.lua",
      ['sonatalib.stat'] = "sonatalib/stat.lua",
      ['sonatalib.struct'] = "sonatalib/struct.lua",
      ['sonatalib.test'] = "sonatalib/test.lua",
      ['sonatalib.units'] = "sonatalib/units.lua",
      ['sonatalib.versions'] = "sonatalib/versions.lua"
   },
   copy_directories = {"locale"}
}
