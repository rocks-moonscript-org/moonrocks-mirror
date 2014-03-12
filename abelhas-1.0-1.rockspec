package = "abelhas"
version = "1.0-1"

source = {
   url = "http://luaforge.net/frs/download.php/2658/abelhas-1.0.tar.gz",
}

description = {
   summary = "A particle swarm optimization (PSO) package for Lua",
   detailed = [[
      Abelhas (aka Lua PSO) is a Lua library for particle swarm optimization
      (PSO), a population-based optimization algorithm inspired by the social
      behavior of some species, like fishes and birds, and used for solving a
      multitude of numeric problems with linear and discrete search spaces. The
      first particle swarm optimization algorithm was invented by Dr. James
      Kennedy and Russell Eberhart, in 1995, and since then several versions
      and variants have been created. Abelhas is one of them.

      For people familiarized with particle swarms, Abelhas is a particle swarm
      optimizer that uses global neighborhood, speed limits and particle
      replacement. It does not have the concept of inertia.
   ]],
   license = "MIT/X11",
   homepage = "http://abelhas.luaforge.net/",
   maintainer = "Alexandre Erwin Ittner <aittner@gmail.com>"
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

