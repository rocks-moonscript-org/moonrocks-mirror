package = "VMSL"
version = "1.0-5"
source = {
   url = "git+https://github.com/pessoa736/VectorAndMatrixSystemLua",
   tag = "v1.0.1"
}
description = {
   summary = "Lua library for N-dimensional vectors and matrices. Lua modules API (require), experimental.",
   detailed = [[
      Vector and Matrix System (Lua) — a simple library to create and manipulate
      mathematical vectors and matrices in N dimensions. Focused on practical use
      (games/simulations). Interfaces are still evolving; there is no stable API yet.
      API type: Lua modules accessed via `require`. Work in progress.
   ]],
   homepage = "https://github.com/pessoa736/VectorAndMatrixSystemLua",
   license = "MIT"
}
dependencies = {
   "lua >= 5.4",
   "loglua"
}
build = {
   type = "builtin",
   modules = {
      matrix = "matrix/core.lua",
      vectors = "vectors/core.lua"
   }
}
