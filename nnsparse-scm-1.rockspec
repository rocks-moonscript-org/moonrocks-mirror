package = "nnsparse"
version = "scm-1"

source = {
   url = "git://github.com/fstrub95/nnsparse.git",
}

description = {
   summary = "Tools for sparse networks with the Torch Framework",
   detailed = [[
   ]],
   homepage = "https://github.com/fstrub95/nnsparse",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
}

 build = {
    type = "builtin",
    modules = {
      sparseTools = "src/SparseTools.lua",
    }
 }
