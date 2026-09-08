package = "genetic-lua"
version = "1.0.0-2"

description = {
   summary = "A genetic algorithm library",
   homepage = "https://github.com/catdev000/genetic-lua",
   license = "MIT"
}

source = {
   url = "https://github.com/catdev000/genetic-lua/archive/refs/tags/v1.0.0.tar.gz",
   tag = "v1.0.0"
}

build = {
   type = "builtin",
   modules = {
      ga = "ga.lua"
   }
}
