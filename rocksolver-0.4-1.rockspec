package = "RockSolver"
version = "0.4-1"
source = {
    tag = "v0.4",
    url = "git://github.com/smasty/rocksolver.git"
}
description = {
    summary = "Dependency resolver library for LuaDist packages.",
    homepage = "http://github.com/smasty/rocksolver",
    license = "MIT"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        ["rocksolver.DependencySolver"] = "rocksolver/DependencySolver.lua",
        ["rocksolver.Package"] = "rocksolver/Package.lua",
        ["rocksolver.constraints"] = "rocksolver/constraints.lua",
        ["rocksolver.utils"] = "rocksolver/utils.lua",
    }
}
