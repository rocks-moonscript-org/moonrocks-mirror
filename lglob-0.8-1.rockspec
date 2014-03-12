package = "lglob"
version = "0.8-1"

source = {
  dir="lglob",
  url = "http://stevedonovan.github.com/files/lglob-0.8.zip"
}

description = {
  summary = "extended global static analysis tool for Lua",
  detailed = [[
   lglob is based on David Manura's globalsplus.lua script
   and parses the bytecode output of luac to flag the setting
   and getting of globals and their fields. (both 'ToString' and 'math.sine'
   are considered errors). The whitelist used can be set,
   and required modules are tracked.
  ]],
  license = "MIT/X11",
  homepage = "https://github.com/stevedonovan/ldoc",
  maintainer = "steve.j.donovan@gmail.com"
}

build = {
  type = "none",
  install = {
    bin = {
      "lglob"
    }
  }
}

