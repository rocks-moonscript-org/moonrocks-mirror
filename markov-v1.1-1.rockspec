package = "markov"
version = "v1.1-1"
source = {
   url = "git+ssh://git@github.com/TangentFoxy/Markov.git",
   tag = "v1.1"
}
description = {
   summary = "Markov chain library supporting dynamic modification of order and source text.",
   homepage = "https://github.com/TangentFoxy/Markov",
   license = "MIT license"
}
build = {
   type = "builtin",
   modules = {
      markov = "markov.lua"
   }
}
