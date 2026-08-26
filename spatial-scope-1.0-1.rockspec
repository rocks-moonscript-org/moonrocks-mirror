package = "spatial-scope"
version = "1.0-1"

source = {
   url = "git+https://github.com/the1andonlycpu-arch/Spatial-Scopes.git",
   tag = "v1.0"
}

description = {
   summary = "A 31-function, graph-linked 3D spatial sandboxing and scoping framework.",
   detailed = [[
      spatial-scope implements a NoSQL 3D coordinate-grid database environment layer. 
      It overrides global environments natively using metatable interceptors, allows deep 
      graph routing fallback inheritance, allows user created addons, and compiles spatial matrices flatly into standard objects.
   ]],
   homepage = "https://github.com/the1andonlycpu-arch/Spatial-Scopes",
   license = "MIT"
}

dependencies = {
   "lua >= 5.1"
}

build = {
   type = "builtin",
   modules = {
      ["spatial_scope"] = "System.lua"
   }
}
