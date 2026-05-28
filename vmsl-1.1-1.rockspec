package = "VMSL"
version = "1.1-1"
source = {
   url = "git+https://github.com/pessoa736/VectorAndMatrixSystemLua",
   tag = "v1.1"
}
description = {
   summary = "Fast Lua library for N-dimensional vectors and M×N matrices (C implementation).",
   detailed = [[
      Vector and Matrix System (Lua) — C implementation for high performance.
      Create and manipulate mathematical vectors and matrices in N dimensions.
      Focused on games and simulations. Drop-in replacement for the pure-Lua version.
   ]],
   homepage = "https://github.com/pessoa736/VectorAndMatrixSystemLua",
   license = "MIT"
}
dependencies = {
   "lua >= 5.4"
}
build = {
   type = "builtin",
   modules = {
      vectors = "src/vector.c",
      matrix  = "src/matrix.c"
   }
}
