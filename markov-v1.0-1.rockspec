package = "markov"
version = "v1.0-1"
source = {
   url = "git+ssh://git@github.com/Guard13007/Markov.git",
   tag = "v1.0"
}
description = {
   summary = "Markov chain library supporting dynamic modification of order and source text.",
   homepage = "https://github.com/Guard13007/Markov",
   license = "*** please specify a license ***"
}
build = {
   type = "builtin",
   modules = {
      markov = "markov.lua"
   }
}
