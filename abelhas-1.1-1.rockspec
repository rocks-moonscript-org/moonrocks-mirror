package = "abelhas"
version = "1.1-1"

source = {
   url = "https://github.com/downloads/ittner/abelhas/abelhas-1.1.tar.gz",
}

description = {
  summary = "A particle swarm optimization (PSO) package for Lua",
  detailed = [[
Abelhas (aka Lua PSO) is a Lua library for particle swarm optimization (PSO), a population-based optimization algorithm inspired by the social behavior of some species, like fishes and birds, and used for solving a multitude of numeric problems with linear and discrete search spaces. The first particle swarm optimization algorithm was invented by Dr. James Kennedy and Russell Eberhart, in 1995, and since then several versions and variants have been created. Abelhas is one of them.

For people familiarized with particle swarms, Abelhas is a particle swarm optimizer that uses global neighborhood, speed limits and particle replacement. It does not have the concept of inertia.
]],
  license = "MIT/X11",
  homepage = "http://ittner.github.com/abelhas/",
  maintainer = "Alexandre Erwin Ittner <alexandre@ittner.com.br>"
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "none",
  install = {
    lua = {
      ["pso"] = "pso.lua",
    }
  }
}

