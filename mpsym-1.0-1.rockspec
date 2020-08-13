package = "mpsym"
version = "1.0-1"

source = {
   url = "git://github.com/Time0o/mpsym_lua",
   tag = "v1.0"
}

description = {
   summary = "MPSoC Symmetry Reduction",
   license = "MIT"
}

dependencies = {
   "lua >= 5.2"
}

build = {
   type='builtin',
   modules = {
      mpsym = 'mpsym.lua'
   }
}
